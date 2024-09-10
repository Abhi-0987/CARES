// ignore_for_file: use_build_context_synchronously
import 'dart:ui';
import 'package:cares_app/screens/home.dart';
import 'package:cares_app/screens/signup.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:colorful_iconify_flutter/icons/flat_color_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _loading = false;
  bool _forgotPass = false;

  Future<void> _signInWithEmailAndPassword() async {
    try {
      setState(() {
        _loading = true;
      });
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      DocumentSnapshot newUser = await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .get();

      if (!newUser.exists) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('User not found')),
        );
      } else {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isLoggedIn', true);
        await prefs.setString('uid', userCredential.user!.uid);
        HomeScreen.uid = userCredential.user!.uid;
        HomeScreen.login = 'email';
        DocumentSnapshot username = await FirebaseFirestore.instance
            .collection('users')
            .doc(HomeScreen.uid)
            .get();
        if (username.exists) {
          HomeScreen.user = username.get('name');
        }
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    } catch (e) {
      if (e is FirebaseAuthException) {
        if (e.code == 'invalid-credential') {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content:
                    Text('The login credentials are incorrect or invalid.')),
          );
        } else if (e.code == 'user-not-found') {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('No user found for that email.')),
          );
        } else if (e.code == 'expired-credential') {
          // Handle expired credential error (if applicable)
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content:
                    Text('Your session has expired. Please sign in again.')),
          );
        } else {
          // Handle other FirebaseAuthException codes
          final genericError =
              SnackBar(content: Text('An error occurred: ${e.message}'));
          ScaffoldMessenger.of(context).showSnackBar(genericError);
        }
      } else {
        // Handle other exceptions (consider using a provider to update UI)
        final snackBar = SnackBar(
            content: Text('An unknown error occurred: ${e.toString()}'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } finally {
      setState(() {
        _loading = false;
      });
    }
    setState(() {});
  }

  Future<void> _signInWithGoogle() async {
    try {
      setState(() {
        _loading = true;
      });
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;

      DocumentSnapshot newUser = await FirebaseFirestore.instance
          .collection('users')
          .doc(user!.uid)
          .get();

      if (!newUser.exists) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('User not found')),
        );
      } else {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isLoggedIn', true);
        await prefs.setString('uid', user.uid);

        HomeScreen.uid = user.uid;
        HomeScreen.login = 'google';
        HomeScreen.user = user.displayName!;

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message!)),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg_4.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 90, sigmaY: 140),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.65,
                    width: width,
                    child: Stack(
                      children: [
                        Container(
                          height: height * 0.46,
                          width: width,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                              color: Colors.black.withOpacity(0.6)),
                          child: Column(
                            children: [
                              SizedBox(height: height * 0.1),
                              SizedBox(
                                height: height * 0.023,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Welcome to',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: width * 0.05)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height * 0.1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('CARES',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: width * 0.2)),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Please login to continue',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: width * 0.05)),
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: height * 0.3,
                          left: width * 0.07,
                          child: Container(
                            padding: EdgeInsets.only(
                                left: width * 0.04, right: width * 0.04),
                            height: height * 0.34,
                            width: width * 0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white.withOpacity(0.7),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    blurRadius: 6,
                                    spreadRadius: 0.5,
                                    offset: const Offset(0, 6))
                              ],
                            ),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: height * 0.04,
                                  ),
                                  TextField(
                                    controller: _emailController,
                                    decoration: InputDecoration(
                                      fillColor:
                                          Colors.black38.withOpacity(0.06),
                                      filled: true,
                                      contentPadding:
                                          EdgeInsets.all(height * 0.017),
                                      labelText: 'Email',
                                      hintText: 'Enter your email',
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.only(
                                            left: width * 0.05,
                                            right: width * 0.02),
                                        child: Icon(
                                          Icons.email_outlined,
                                          color: Colors.black,
                                          size: width * 0.08,
                                        ),
                                      ),
                                      labelStyle: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                      focusColor: Colors.black,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.black,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(width * 0.06),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(width * 0.1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  if (!_forgotPass)
                                    Column(
                                      children: [
                                        TextField(
                                          controller: _passwordController,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.all(height * 0.017),
                                            labelText: 'Password',
                                            hintText: 'Enter your password',
                                            prefixIcon: Padding(
                                              padding: EdgeInsets.only(
                                                  left: width * 0.05,
                                                  right: width * 0.02),
                                              child: Icon(
                                                Icons.lock_outline,
                                                color: Colors.black,
                                                size: width * 0.08,
                                              ),
                                            ),
                                            fillColor: Colors.black38
                                                .withOpacity(0.06),
                                            filled: true,
                                            labelStyle: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(0.5)),
                                            focusColor: Colors.black,
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.black),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.06),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.black),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.1),
                                            ),
                                          ),
                                          obscureText: true,
                                        ),
                                        SizedBox(
                                          height: height * 0.0001,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                _forgotPass = true;
                                              });
                                            },
                                            child: Text(
                                              'Forgot password?',
                                              style: TextStyle(
                                                fontSize: width * 0.04,
                                                color: Colors.black,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.00000000001,
                                        ),
                                        ElevatedButton(
                                          onPressed: () =>
                                              _signInWithEmailAndPassword(),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFFC55CDF)
                                                    .withOpacity(0.24),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 40, vertical: 10),
                                          ),
                                          child: const Text(
                                            'Login',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'josefin',
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  if (_forgotPass)
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: height * 0.00000000001,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                _forgotPass = false;
                                              });
                                            },
                                            child: Text(
                                              'Enter password..!!',
                                              style: TextStyle(
                                                fontSize: width * 0.04,
                                                color: Colors.black,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.00000000001,
                                        ),
                                        ElevatedButton(
                                          onPressed: () async {
                                            try {
                                              setState(() {
                                                _loading = true;
                                              });
                                              await FirebaseAuth.instance
                                                  .sendPasswordResetEmail(
                                                      email: _emailController
                                                          .text
                                                          .trim());
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content: Text(
                                                      'Password reset email sent'),
                                                ),
                                              );
                                            } on FirebaseAuthException catch (e) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(e.message ??
                                                      'Error sending email'),
                                                ),
                                              );
                                            } catch (e) {
                                              // Catch any other exceptions
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text('Error$e'),
                                                ),
                                              );
                                            } finally {
                                              setState(() {
                                                _loading = false;
                                                _forgotPass = false;
                                              });
                                            }
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFFC55CDF)
                                                    .withOpacity(0.24),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 40, vertical: 10),
                                          ),
                                          child: const Text(
                                            'Reset Pass',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'josefin',
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        " click here to ",
                                        style: TextStyle(
                                          fontSize: width * 0.04,
                                          color: Colors.black,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () => Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SignupPage())),
                                        child: Text(
                                          'Create Account',
                                          style: TextStyle(
                                              fontSize: width * 0.04,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1,
                        width: width * 0.15,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        'OR',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: width * 0.05),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Container(
                        height: 1,
                        width: width * 0.15,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ElevatedButton(
                    onPressed: () => _loading
                        ? const CircularProgressIndicator()
                        : _signInWithGoogle(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white.withOpacity(0.4)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Iconify(FlatColorIcons.google),
                        SizedBox(width: width * 0.03),
                        Text(
                          'Login with google',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: width * 0.045),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  if (_loading)
                    SizedBox(
                      height: height * 0.05,
                      width: width * 0.1,
                      child: const CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
