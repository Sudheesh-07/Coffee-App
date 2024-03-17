import 'dart:ui';

import 'package:coffee_app/homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usercontroller = new TextEditingController();
    TextEditingController password = new TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 750,
                  width: 366,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 25.0, sigmaY: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Container(
                height: 750,
                width: 366,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 57),
                      child: Container(
                          height: 70,
                          width: 89,
                          child: Image.asset('assets/images/cup.png')),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      'Swift',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Café',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '"Latte but never late"',
                      style: TextStyle(
                        shadows: [
                          Shadow(
                              color: Colors.white.withOpacity(0.5),
                              blurRadius: 20)
                        ],
                        fontFamily: 'Raleway',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextField(
                        controller: usercontroller,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "   User Name",
                            hintStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextField(
                        controller: password,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "   Password",
                            hintStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      height: 69,
                    ),
                    Container(
                      width: 245,
                      height: 49,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                              colors: [Color(0xFF4D2B1A), Color(0xFFA7745A)]),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 6,
                            )
                          ]),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const Homepage()),);
                        },
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 39,
                    ),
                    Container(
                      width: 245,
                      height: 49,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          "SignUp",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(height: 28,),
                    Text("Privacy Policy", style: TextStyle(color: Colors.white,fontSize: 16),)
                  ],
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
