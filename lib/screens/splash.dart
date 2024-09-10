import 'package:cares_app/screens/home.dart';
import 'package:cares_app/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _opacityAnimation;
  // Animation<double>? _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _opacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_controller!);

    _controller!.forward().then((_) {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const AuthCheck(),
          transitionDuration: const Duration(milliseconds: 500),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return Animate(
              effects: const [
                FadeEffect(duration: Duration(milliseconds: 500)),
                MoveEffect(
                    curve: Curves.easeInOut,
                    begin: Offset(1, 0),
                    end: Offset.zero),
              ],
              child: child,
            );
          },
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 60, 5, 70),
      body: Center(
        child: Animate(
          effects: const [
            ScaleEffect(
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 300),
                begin: SlideEffect.defaultValue)
          ],
          child: FadeTransition(
            opacity: _opacityAnimation!,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png'),
                const Text(
                  'CARES',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 60,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AuthCheck extends StatelessWidget {
  const AuthCheck({super.key});

  Future<bool> checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    return isLoggedIn;
  }

  Future<String> _getuid() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String uid = prefs.getString('uid') ?? '';
    return uid;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: checkLoginStatus(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData && snapshot.data == true) {
          return FutureBuilder<String>(
            future: _getuid(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                HomeScreen.uid = snapshot.data!;
                return const HomeScreen();
              } else {
                return const LoginPage();
              }
            },
          );
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
