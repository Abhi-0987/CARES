import 'dart:ui';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/healthicons.dart';

class Result extends StatefulWidget {
  final Map<String, dynamic> output;
  const Result({super.key, required this.output});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black.withOpacity(0.4),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Test Results',
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
            child: Container(
              height: height,
              width: width,
              color: Colors.black.withOpacity(0.4),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.1,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          'White Blood Cells (WBC):',
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.1,
                      width: width * 0.9,
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: widget.output['WBC'] is double
                              ? widget.output['WBC'].toString()
                              : widget.output['WBC'],
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                        ),
                        readOnly: true,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          'Red Blood Cells (RBC):',
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.1,
                      width: width * 0.9,
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: widget.output['RBC'] is double
                              ? widget.output['RBC'].toString()
                              : widget.output['RBC'],
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                        ),
                        readOnly: true,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          'Platelets:',
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.1,
                      width: width * 0.9,
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: widget.output['Platelets'] is double
                              ? widget.output['Platelets'].toString()
                              : widget.output['Platelets'],
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                        ),
                        readOnly: true,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          'Hemoglobin:',
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.1,
                      width: width * 0.9,
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: widget.output['Hemoglobin'] is double
                              ? widget.output['Hemoglobin'].toString()
                              : widget.output['Hemoglobin'],
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                        ),
                        readOnly: true,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          children: [
                            Text('Note: ',
                                style: TextStyle(
                                    fontSize: width * 0.06,
                                    fontWeight: FontWeight.bold)),
                            Text(
                              'If any of the reports are abnormal, it may indicate a potential cancer diagnosis, if the symptoms are certainly:\n',
                              style: TextStyle(fontSize: width * 0.06),
                            ),
                            Text(
                              '1. Unexplained weight loss\n'
                              '2. Persistent fever\n'
                              '3. Extreme fatigue\n'
                              '4. Unexplained pain\n'
                              '5. Skin changes\n'
                              '6. Changes in bowel/bladder habits\n'
                              '7. Persistent cough/hoarseness\n'
                              '8. Difficulty swallowing\n'
                              '9. Unusual bleeding/discharge\n'
                              '10. Lumps/thickening\n',
                              style: TextStyle(fontSize: width * 0.06),
                            ),
                            Text('Disclaimer : ',
                                style: TextStyle(
                                    fontSize: width * 0.06,
                                    fontWeight: FontWeight.bold)),
                            Text(
                                "This app doesn't completely tell you about your condition. It is just a probability of being prone to cancer.\n We strongly recomment to consult a doctor for the confirmation.",
                                style: TextStyle(fontSize: width * 0.06))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
