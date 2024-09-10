import 'dart:async';
import 'dart:ui';
import 'package:cares_app/screens/home.dart';
import 'package:cares_app/widgets/time.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/healthicons.dart';
import 'package:cares_app/screens/output.dart';
import 'package:provider/provider.dart';

class SelfAssesment extends StatefulWidget {
  const SelfAssesment({super.key});
  static double percent = 0.0;
  static int days = 0;

  @override
  State<SelfAssesment> createState() => _SelfAssesmentState();
}

class _SelfAssesmentState extends State<SelfAssesment> {
  final TextEditingController _wbcCount = TextEditingController();
  final TextEditingController _rbcCount = TextEditingController();
  final TextEditingController _hemoCount = TextEditingController();
  final TextEditingController _platelets = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Map<String, String> output = {};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showDisclaimerDialog();
    });
  }

  void _showDisclaimerDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Disclaimer'),
          content: const Text(
              "This app doesn't completely guarantee the existence of cancer. It only helps in knowing the probability of being prone to cancer. We strongly recommend consulting a doctor for confirmation."),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black.withOpacity(0.7),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Self Assesment Tool',
              style: TextStyle(fontSize: width * 0.07, color: Colors.white),
            ),
            SizedBox(
              width: width * 0.02,
            ),
            Iconify(
              Healthicons.stethoscope,
              color: Colors.white,
              size: width * 0.1,
            ),
          ],
        ),
      ),
      body: Container(
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
            filter: ImageFilter.blur(sigmaX: 90, sigmaY: 190),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: height * 0.15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Enter every detail',
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.08),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.01),
                    _buildInputRow(
                      'White Blood Cells (WBC):',
                      _wbcCount,
                      'Enter WBC count',
                      height,
                      width,
                    ),
                    _buildInputRow(
                      'Red Blood Cells (RBC):',
                      _rbcCount,
                      'Enter RBC count',
                      height,
                      width,
                    ),
                    _buildInputRow(
                      'Platelets:',
                      _platelets,
                      'Enter Platelets count',
                      height,
                      width,
                    ),
                    _buildInputRow(
                      'Hemoglobin:',
                      _hemoCount,
                      'Enter Hemoglobin percentage',
                      height,
                      width,
                    ),
                    SizedBox(height: height * 0.02),
                    ElevatedButton(
                      onPressed: () async {
                        if (double.tryParse(_wbcCount.text) == null ||
                            double.tryParse(_rbcCount.text) == null ||
                            double.tryParse(_platelets.text) == null ||
                            double.tryParse(_hemoCount.text) == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Please enter all values.')));
                        } else {
                          result({
                            'WBC': double.tryParse(_wbcCount.text),
                            'RBC': double.tryParse(_rbcCount.text),
                            'Platelets': double.tryParse(_platelets.text),
                            'Hemoglobin': double.tryParse(_hemoCount.text),
                          }, context);
                          Provider.of<TimerProvider>(context, listen: false)
                              .startTimer(0.0);
                          _wbcCount.clear();
                          _rbcCount.clear();
                          _platelets.clear();
                          _hemoCount.clear();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFC55CDF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 10),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'SUBMIT',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'josefin',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.2),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputRow(String label, TextEditingController controller,
      String hintText, double height, double width) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: width * 0.05),
            Text(
              label,
              style: TextStyle(color: Colors.white, fontSize: width * 0.05),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.1,
          width: width * 0.9,
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a value.';
              }
              final isNumeric = int.tryParse(value) != null;
              if (!isNumeric) {
                return 'Please enter a valid number.';
              }
              return null; // No validation error
            },
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(height: height * 0.01),
      ],
    );
  }

  void result(Map<String, dynamic> data, BuildContext context) async {
    try {
      Map<String, dynamic>? prev = await fetchDataFromFirebase(HomeScreen.uid);
      await submitFormData(data);
      Map<String, String> result = BloodCountComparator(prev, data).compare();
      setState(() {
        output = result;
      });
      Navigator.pushReplacement(
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

Future<void> submitFormData(Map<String, dynamic> data) async {
  await FirebaseFirestore.instance
      .collection('records')
      .doc(HomeScreen.uid)
      .set(data);
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

class BloodCountComparator {
  final Map<String, dynamic>? _previousWeekData;
  final Map<String, dynamic>? _thisWeekData;

  BloodCountComparator(this._previousWeekData, this._thisWeekData);

  Map<String, String> compare({num threshold = 10}) {
    final results = <String, String>{};
    _previousWeekData!.forEach((key, prevValue) {
      final thisValue = _thisWeekData![key];
      final diffPercentage = ((thisValue! - prevValue) / prevValue) * 100;
      if (diffPercentage.abs() > threshold) {
        results[key] = 'abnormal';
      } else {
        results[key] = 'normal';
      }
    });
    return results;
  }
}
