import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  const Information(
      {required this.path,
      required this.heading,
      required this.description,
      super.key});
  final String path;
  final String heading;
  final String description;

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 13, 36),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        title: Text(
          widget.heading,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.3,
                    width: width * 0.95,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                    child: Image(
                      image: AssetImage(widget.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: height * 0.3,
              ),
              Container(
                height: height * 0.58,
                width: width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 43, 13, 36),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: SingleChildScrollView(
                  child: Text(widget.description,
                      style: TextStyle(
                        fontSize: width * 0.04,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
