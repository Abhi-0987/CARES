// ignore_for_file: use_build_context_synchronously

import 'dart:ui';
import 'package:cares_app/screens/home.dart';
import 'package:cares_app/screens/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:colorful_iconify_flutter/icons/flat_color_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _username = TextEditingController();
  bool _loading = false;

  Future<void> _registerWithEmailAndPassword() async {
    setState(() {
      _loading = true;
    });
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      HomeScreen.uid = userCredential.user!.uid;
      HomeScreen.login = 'email';
      HomeScreen.user = _username.text;

      final userDoc =
          _firestore.collection('users').doc(userCredential.user!.uid);
      await userDoc.set({
        'name': _username.text,
      });

      final reportdoc =
          _firestore.collection('records').doc(userCredential.user!.uid);
      await reportdoc.set({
        'WBC': 4500.0,
        'RBC': 4.1,
        'Platelets': 150000.0,
        'Hemoglobin': 12.0,
      });

      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);
      await prefs.setString('uid', userCredential.user!.uid);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('The password provided is too weak')),
        );
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('The account already exists fot this mail')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    } finally {
      setState(() {
        _loading = false;
      });
    }
    setState(() {});
  }

  Future<void> _signInWithGoogle() async {
    setState(() {
      _loading = true;
    });
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth!.idToken,
        accessToken: googleAuth.accessToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;

      HomeScreen.uid = user!.uid;
      HomeScreen.login = 'google';
      HomeScreen.user = user.displayName!;

      // Add user details to database with user ID
      final userDoc = _firestore.collection('users').doc(user.uid);
      await userDoc.set({
        'name': user.displayName,
      });

      final reportdoc = _firestore.collection('records').doc(user.uid);
      await reportdoc.set({
        'WBC': 4500.0,
        'RBC': 4.1,
        'Platelets': 150000.0,
        'Hemoglobin': 12.0,
      });
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);
      await prefs.setString('uid', user.uid);
      // Move to next screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
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
                    height: height * 0.7,
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
                                  Text('Be a part of us by creating account',
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
                            height: height * 0.4,
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
                                    controller: _username,
                                    decoration: InputDecoration(
                                      fillColor:
                                          Colors.black38.withOpacity(0.06),
                                      filled: true,
                                      contentPadding:
                                          EdgeInsets.all(height * 0.017),
                                      labelText: 'Full Name',
                                      hintText: 'Enter your name',
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.only(
                                            left: width * 0.05,
                                            right: width * 0.02),
                                        child: Icon(
                                          Icons.person_2_outlined,
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
                                      fillColor:
                                          Colors.black38.withOpacity(0.06),
                                      filled: true,
                                      labelStyle: TextStyle(
                                          color: Colors.black.withOpacity(0.5)),
                                      focusColor: Colors.black,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.black),
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
                                    obscureText: true,
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  ElevatedButton(
                                    onPressed: () =>
                                        _registerWithEmailAndPassword(),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFC55CDF)
                                          .withOpacity(0.24),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 40, vertical: 10),
                                    ),
                                    child: const Text(
                                      'Create Account',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'josefin',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.0000000000001,
                                  ),
                                  SizedBox(
                                    height: height * 0.04,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Already have an account? ',
                                          style: TextStyle(
                                            fontSize: width * 0.04,
                                            color: Colors.black,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () =>
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const LoginPage())),
                                          child: Text(
                                            'Login',
                                            style: TextStyle(
                                                fontSize: width * 0.04,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.02),
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
                    onPressed: () => _signInWithGoogle(),
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
                          'Continue with google',
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
