import 'package:flutter/material.dart';
import 'package:instant_pay/screens/balance_screen.dart';
import 'package:instant_pay/screens/home_screen.dart';
import 'package:instant_pay/screens/login_screen.dart';
import 'package:instant_pay/screens/offer_screen.dart';
import 'package:instant_pay/screens/splash_screen.dart';
import 'dart:html';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instant Pay",
      home: SplashScreen(),
    );
  }
}
