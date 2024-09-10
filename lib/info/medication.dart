import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:iconify_flutter/icons/game_icons.dart'; // widget
import 'package:iconify_flutter/icons/healthicons.dart';

class Medication extends StatefulWidget {
  const Medication({super.key});

  @override
  State<Medication> createState() => _MedicationState();
}

class _MedicationState extends State<Medication> {
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
          'V Care',
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
                  image: AssetImage('assets/medicines.jpeg'),
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
                      color: Colors.white,
                    ),
                    child: const Image(
                      image: AssetImage('assets/Vcare.png'),
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
                        Uri(scheme: 'https', host: 'vcarecancer.org'));
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
                    'They are a dedicated team of volunteers, forming a robust support network for individuals and families facing cancer. Through their comprehensive and innovative programs, They empoTheyr patients on their cancer journey, fostering hope, awareness, and education.  There mission is to equip them with the tools they need to navigate the challenges of treatment, igniting their inner strength and fostering a sense of resilience.',
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
                    'Services: ',
                    style:
                        TextStyle(color: Colors.white, fontSize: width * 0.06),
                  ),
                ],
              ),
              const _Services(
                icon: Iconify(
                  Healthicons.medicines,
                  color: Colors.white,
                ),
                service: 'Free Medication Schemes',
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const _Services(
                icon: Iconify(
                  GameIcons.take_my_money,
                  color: Colors.white,
                ),
                service: 'Financial Support',
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const _Services(
                icon: Iconify(
                  Healthicons.home,
                  color: Colors.white,
                ),
                service: 'Shelter',
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const _Services(
                icon: Iconify(
                  Healthicons.speech_language_therapy,
                  color: Colors.white,
                ),
                service: 'Awareness Programs',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Text(
                    'and many more...',
                    style:
                        TextStyle(color: Colors.white, fontSize: width * 0.04),
                  ),
                ],
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
            style: TextStyle(color: Colors.white, fontSize: width * 0.04)),
      ],
    );
  }
}
