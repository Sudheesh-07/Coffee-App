import 'dart:ui';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Image.asset('assets/images/coffee.png'),
            Container(
              height: 300,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0.5),
                      Colors.transparent
                    ],begin: Alignment.topCenter,end: Alignment.bottomCenter))
            ),
            Container(
              margin: EdgeInsets.only(top: 350),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
                child: ClipRect(
                child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 25.0, sigmaY: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.symmetric(horizontal: BorderSide(width: 2,color: Colors.grey)),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(17),topRight: Radius.circular(17)),
                    color: Colors.grey.withOpacity(0.2)
                  ),
                ),
              ),
              )

            ),
          ],
        ),
      ),
    );
  }
}
