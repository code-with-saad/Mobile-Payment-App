import 'package:flutter/material.dart';
import 'package:instant_pay/screens/home_screen.dart';
import 'package:wc_form_validators/wc_form_validators.dart';
import 'dart:html';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
    TextEditingController email = TextEditingController();
    final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff181A20),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/logback.png',
            width: size.width,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: size.height * 0.18,
            left: size.width * 0.23,
            child: Image.asset(
              'assets/images/loglogo.png',
            ),
          ),
          SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30, top: 50),
                  child: Text(
                    'LOGIN WITH YOUR \nEMAIL ADDRESS',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 320,
                ),
                Container(
                  // color: Color(0xff181A20),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 60, right: 10, left: 10),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: SizedBox(
                                height: size.height * 0.05,
                                child: TextFormField(
                                  controller: email,
                                  obscureText: false,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                      labelText: "Enter Email Address",
                                      labelStyle: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                          validator: Validators.compose([
                                          Validators.required('Email is required'),
                                          Validators.email('Invalid email')
                                          ]),
                                ),
                              ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                        onPressed: () {
                        if (email.text == "admin@gmail.com") {
                          print(email.text);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                            builder: (context) => const Home()));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 530, vertical: 20),
                        backgroundColor: const Color.fromARGB(255, 34, 47, 167),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: const Text('Verify',
                          style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700))),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Your personal details are safe with us',
                          style: TextStyle(
                              // backgroundColor: Colors.black,
                              color: Color.fromARGB(255, 1, 22, 254),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Read our Privacy Policy and Terms and Conditions',
                          style: TextStyle(
                              color: Color.fromARGB(255, 1, 22, 254),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
