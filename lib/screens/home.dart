import 'dart:async';
import 'package:cares_app/info/ayurvedic.dart';
import 'package:cares_app/screens/ai.dart';
import 'package:cares_app/screens/login.dart';
import 'package:cares_app/info/medication.dart';
import 'package:cares_app/screens/output.dart';
import 'package:cares_app/screens/self.dart';
import 'package:cares_app/widgets/banner.dart';
import 'package:cares_app/widgets/pdf_view.dart';
import 'package:cares_app/widgets/time.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cares_app/info/about_cancer.dart';
import 'package:cares_app/info/types_of_cancer.dart';
import 'package:cares_app/info/causes.dart';
import 'package:cares_app/info/cure.dart';
import 'package:cares_app/info/prevention.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:iconify_flutter/icons/game_icons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/healthicons.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String uid = '';
  static String login = '';
  static String user = '';
  static double percent = 0.0;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  Map<String, dynamic> output = {};
  Future<void> _user() async {
    DocumentSnapshot username = await FirebaseFirestore.instance
        .collection('users')
        .doc(HomeScreen.uid)
        .get();
    if (username.exists) {
      HomeScreen.user = username.get('name');
    }
  }

  @override
  void initState() {
    super.initState();
    _user();
  }

  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    TabController tabc = TabController(length: 5, vsync: this);
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.8),
        ),
      ),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      openRatio: 0.6,
      openScale: 0.92,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
        child: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 128.0,
                height: 128.0,
                margin: const EdgeInsets.only(
                  top: 24.0,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/logo.png',
                ),
              ),
              Text(
                HomeScreen.user,
                style: TextStyle(color: Colors.white, fontSize: width * 0.07),
              ),
              SizedBox(
                height: height * 0.08,
              ),
              ListTile(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SelfAssesment())),
                leading: const Iconify(
                  Healthicons.stethoscope,
                  color: Colors.white,
                ),
                title: const Text('Self Assesment'),
              ),
              ListTile(
                onTap: () {
                  result(context);
                },
                leading: const Iconify(
                  Healthicons.medical_records_outline,
                  color: Colors.white,
                ),
                title: const Text('Previous Records'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Medication()));
                },
                leading: const Iconify(
                  Healthicons.medicines,
                  color: Colors.white,
                ),
                title: const Text('Free Medication'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Ayurvedic()));
                },
                leading: const Iconify(
                  GameIcons.teapot_leaves,
                  color: Colors.white,
                ),
                title: const Text('Ayurvedic'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PdfView()));
                },
                leading: const Iconify(GameIcons.archive_research,
                    color: Colors.white),
                title: const Text(
                  'Citations',
                ),
              ),
              ListTile(
                onTap: () async {
                  HomeScreen.login == 'google'
                      ? await GoogleSignIn().signOut()
                      : await FirebaseAuth.instance.signOut();

                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  await prefs.setBool('isLoggedIn', false);
                  await prefs.setString('uid', '');

                  Navigator.pushReplacement(
                      // ignore: use_build_context_synchronously
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
              ),
              const Spacer(),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white54,
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 16.0,
                  ),
                  child: const Text('Terms of Service | Privacy Policy'),
                ),
              ),
            ],
          ),
        ),
      ),
      child: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg_4.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 90, sigmaY: 140),
              child: Scaffold(
                extendBodyBehindAppBar: true,
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  iconTheme: const IconThemeData(color: Colors.white),
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                    onPressed: _handleMenuButtonPressed,
                    icon: ValueListenableBuilder<AdvancedDrawerValue>(
                      valueListenable: _advancedDrawerController,
                      builder: (_, value, __) {
                        return AnimatedSwitcher(
                          duration: const Duration(milliseconds: 250),
                          child: Icon(
                            value.visible ? Icons.clear : Icons.menu,
                            key: ValueKey<bool>(value.visible),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      ClipRRect(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black87.withAlpha(100),
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50)),
                          ),
                          height: height * 0.2,
                          width: width * 0.98,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: height * 0.05,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 15,
                                        child: Text(
                                          'With',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: width * 0.04,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        child: Text(
                                          'CARES',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: width * 0.15,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 70,
                                      ),
                                      Text(
                                        'you are never alone.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: width * 0.04,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Text(
                            'Quick Access',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AiBot(),
                                  ),
                                ),
                                child: SizedBox(
                                  child: Lottie.asset(
                                    'assets/ai_bot.json',
                                    height: height * 0.15,
                                    repeat: true,
                                  ),
                                ),
                              ),
                              Text(
                                'Click on the bot to ask AI',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.022),
                              ),
                            ],
                          ),
                          Container(
                            height: height * 0.17,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: height * 0.008,
                                ),
                                CircularPercentIndicator(
                                  radius: width * 0.12,
                                  lineWidth: 10,
                                  percent: Provider.of<TimerProvider>(context)
                                      .currentPercentage,
                                  progressColor: Colors.deepPurple[600],
                                  backgroundColor:
                                      const Color.fromARGB(255, 205, 184, 241),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  center: Text(
                                    '${Provider.of<TimerProvider>(context).currentDay}/10',
                                    style: const TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Expanded(
                                  child: Text(
                                    'Days left for your next checkup',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.03),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Container(
                            height: height * 0.17,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SelfAssesment())),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: height * 0.008,
                                  ),
                                  Iconify(
                                    Healthicons.stethoscope,
                                    color: Colors.deepPurple[200],
                                    size: width * 0.3,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Self-Assesment',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: width * 0.035),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      CarouselSlider(
                        items: [
                          BannerCmove(
                            height: height,
                            width: width,
                            name: 'Avacado',
                            vitamin: 'vitamins C,E,K.',
                            animation: 'assets/avacado.json',
                          ),
                          BannerCmove(
                            height: height,
                            width: width,
                            name: 'Orange',
                            vitamin: 'vitamin C.',
                            animation: 'assets/orange.json',
                          ),
                          BannerCmove(
                            height: height,
                            width: width,
                            name: 'Water Melon',
                            vitamin: 'electrolytes and water content.',
                            animation: 'assets/watermelon.json',
                          ),
                          BannerCmove(
                            height: height,
                            width: width,
                            name: 'Apple',
                            vitamin: 'fiber and antioxidents.',
                            animation: 'assets/apple.json',
                          ),
                        ],
                        options: CarouselOptions(
                          viewportFraction: 0.93,
                          autoPlay: true,
                          autoPlayAnimationDuration: const Duration(seconds: 2),
                        ),
                      ),
                      Container(
                        height: height * 0.03,
                        margin: EdgeInsets.symmetric(horizontal: height * 0.01),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TabBar(
                          isScrollable: true,
                          tabAlignment: TabAlignment.start,
                          controller: tabc,
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerColor: Colors.transparent,
                          indicator: BoxDecoration(
                            color: Colors.deepPurple.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          unselectedLabelStyle:
                              const TextStyle(fontFamily: 'josefin'),
                          labelColor: Colors.deepPurple[100],
                          unselectedLabelColor: Colors.white,
                          labelStyle: const TextStyle(
                            fontFamily: 'josefin',
                            fontSize: 14,
                          ),
                          tabs: const [
                            Tab(
                              text: 'About Cancer',
                            ),
                            Tab(
                              text: 'Causes',
                            ),
                            Tab(
                              text: 'Types of Cancer',
                            ),
                            Tab(
                              text: 'Cure',
                            ),
                            Tab(
                              text: 'Prevention',
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      LayoutBuilder(
                        builder: ((context, constraints) => SizedBox(
                              height: height * 0.98,
                              width: width * 0.98,
                              child: TabBarView(
                                controller: tabc,
                                children: const [
                                  AboutCancer(),
                                  Causes(),
                                  TypesOfCancer(),
                                  Cure(),
                                  Prevention(),
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }

  Future<Map<String, dynamic>?> fetchDataFromFirebase(String documentId) async {
    final firestore = FirebaseFirestore.instance;
    final docRef = firestore.collection('records').doc(documentId);
    final docSnapshot = await docRef.get();

    if (docSnapshot.exists) {
      return docSnapshot.data();
    } else {
      return null; // Indicate document not found
    }
  }

  void result(BuildContext context) async {
    try {
      Map<String, dynamic>? result =
          await fetchDataFromFirebase(HomeScreen.uid);
      setState(() {
        output = result!;
      });
      Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
          builder: (context) => Result(output: output),
        ),
      );
    } catch (e) {
      return;
    }
  }
}
