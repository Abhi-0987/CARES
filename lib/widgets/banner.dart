import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BannerCmove extends StatefulWidget {
  const BannerCmove(
      {super.key,
      required this.height,
      required this.width,
      required this.vitamin,
      required this.name,
      required this.animation});
  final double height;
  final double width;
  final String name;
  final String vitamin;
  final String animation;

  @override
  State<BannerCmove> createState() => _BannerCmoveState();
}

class _BannerCmoveState extends State<BannerCmove> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            ),
            height: widget.height * 0.215,
            width: widget.width * 0.9,
            child: Column(
              children: [
                SizedBox(
                  height: widget.height * 0.01,
                ),
                Text(
                  widget.name.toString(),
                  style: TextStyle(
                      fontSize: widget.width * 0.07,
                      color: Colors.white,
                      fontFamily: 'josefin',
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: widget.width * 0.09,
                    ),
                    Expanded(
                      child: Text(
                        'Eating this regularly will help you in replinishing ${widget.vitamin}',
                        style: TextStyle(
                          fontSize: widget.width * 0.043,
                          color: Colors.white,
                          fontFamily: 'josefin',
                        ),
                      ),
                    ),
                    Lottie.asset(
                      widget.animation,
                      width: widget.width * 0.325,
                      height: widget.height * 0.15,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
