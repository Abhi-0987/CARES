import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Ayurvedic extends StatefulWidget {
  const Ayurvedic({super.key});

  @override
  State<Ayurvedic> createState() => _AyurvedicState();
}

class _AyurvedicState extends State<Ayurvedic> {
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppBrowserView,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 60, 5, 70),
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black.withOpacity(0.8),
        centerTitle: true,
        title: Text(
          'PUNARJAN',
          style: TextStyle(fontSize: width * 0.06, color: Colors.white),
        ),
      ),
      body: Container(
        height: height,
        width: width,
        color: Colors.black.withOpacity(0.4),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height * 0.3,
                width: width,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: const Image(
                  image: AssetImage('assets/ayurvedic.jfif'),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.018,
                  ),
                  Container(
                    height: height * 0.15,
                    width: width * 0.36,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          style: BorderStyle.solid,
                          width: width * 0.01,
                          color: Colors.black.withOpacity(0.7)),
                      color: const Color.fromARGB(255, 247, 243, 243),
                    ),
                    child: const Image(
                      image: AssetImage('assets/punarjan.jpeg'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: const Color.fromARGB(255, 192, 96, 201)),
                  onPressed: () => setState(() {
                    _launchInBrowser(
                        Uri(scheme: 'https', host: 'punarjanayurveda.com'));
                  }),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Visit Website',
                        style: TextStyle(
                            color: Colors.white, fontSize: width * 0.045),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: width,
                  child: Text(
                    'Punarjan Ayurveda Hospitals is a renowned Ayurvedic cancer care center headquartered in Hyderabad, India. They specialize in treating various cancers using traditional Ayurvedic principles with a focus on holistic healing and minimizing side effects.',
                    style:
                        TextStyle(color: Colors.white, fontSize: width * 0.04),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    'Key Aspects: ',
                    style:
                        TextStyle(color: Colors.white, fontSize: width * 0.06),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  buildSideHeading(
                      "• Focus on Rasayana Ayurveda:", true, context),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "This emphasizes using herbs and treatments to improve immunity and overall well-being, promoting the body's natural healing processes.\n",
                  style: TextStyle(color: Colors.white, fontSize: width * 0.04),
                ),
              ),
              Row(
                children: [
                  buildSideHeading("• Experienced Staff:", true, context),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Punarjan boasts a team of experienced Ayurvedic doctors who integrate traditional wisdom with modern medical practices.\n",
                  style: TextStyle(color: Colors.white, fontSize: width * 0.04),
                ),
              ),
              Row(
                children: [
                  buildSideHeading(
                      "• Personalized Treatment Plans: ", true, context),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "They create customized treatment plans for each patient considering their medical history, condition, and individual needs.\n",
                  style: TextStyle(color: Colors.white, fontSize: width * 0.04),
                ),
              ),
              Row(
                children: [
                  buildSideHeading("• Compassionate Care: ", true, context),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "The hospital prioritizes providing a supportive and caring environment for patients during their treatment journey.",
                  style: TextStyle(color: Colors.white, fontSize: width * 0.04),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Services extends StatelessWidget {
  const _Services({required this.icon, required this.service});
  final Widget icon;
  final String service;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(
          width: width * 0.03,
        ),
        Container(
          height: height * 0.05,
          width: width * 0.1,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: icon,
          ),
        ),
        SizedBox(
          width: width * 0.04,
        ),
        Text(service,
            style: TextStyle(color: Colors.white, fontSize: width * 0.05)),
      ],
    );
  }
}

Widget buildSideHeading(String text, bool isBold, BuildContext context) {
  final double width = MediaQuery.of(context).size.width;
  return Text(
    text,
    style: TextStyle(
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        fontSize: width * 0.04,
        color: Colors.white),
  );
}
