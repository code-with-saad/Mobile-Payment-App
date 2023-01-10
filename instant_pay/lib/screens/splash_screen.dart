import 'package:flutter/material.dart';
import 'dart:async';
import 'package:instant_pay/screens/login_screen.dart';
import 'dart:html';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Login(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          color: Color(0xff101A21),
          image:
              DecorationImage(image: AssetImage("assets/images/Vector.png"))),
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff4D5DFA), 
                  fixedSize: const Size(190, 35)),
              onPressed: () {},
              child: const Text(
                "INSTANT PAY",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              )),
          const SizedBox(height: 10),
          const Text("Your Perfect Payment Partner",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 15,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.circle,
                  color: Color(0xff4D5DFA),
                  size: 15,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.circle,
                  color: Color(0xff4D5DFA),
                  size: 15,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.circle,
                  color: Color(0xff4D5DFA),
                  size: 15,
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
