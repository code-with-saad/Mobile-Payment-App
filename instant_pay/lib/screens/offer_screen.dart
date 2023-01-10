import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instant_pay/screens/balance_screen.dart';
import 'package:instant_pay/screens/home_screen.dart';
import 'package:instant_pay/screens/notification_screen.dart';
import 'package:instant_pay/screens/offer_screen.dart';
import 'package:instant_pay/screens/profile_screen.dart';
import 'package:instant_pay/screens/reward_screen.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191B22),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff1A1C23),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade900,
                      blurRadius: 15.0,
                      spreadRadius: 4.0,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                    )
                  ],
                ),
                height: 140,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                          leading: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Profile(),
                                    ));
                              },
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/mydp.png"),
                              )),
                          title: TextField(
                            style: const TextStyle(color: Colors.white),
                            obscureText: false,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                      width: 2, color: Color(0xff343645))),
                              hintText: "Search Users, ID's etc",
                              hintStyle: const TextStyle(color: Colors.white),
                              suffixIcon: const Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          trailing: IconButton(
                            icon: const Icon(
                              Icons.notifications,
                              size: 30,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => const Notifications()));
                            },
                          )),
                      const SizedBox(
                        height: 20,
                        width: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Home(),
                                      ));
                                },
                                child: const Text(
                                  "Home",
                                  style: TextStyle(color: Colors.white),
                                )),
                            const SizedBox(
                              width: 12,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Balance(),
                                      ));
                                },
                                child: const Text(
                                  "Balance",
                                  style: TextStyle(color: Colors.white),
                                )),
                            const SizedBox(
                              width: 12,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Offers(),
                                      ));
                                },
                                child: const Text(
                                  "Offers",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w900),
                                )),
                            const SizedBox(
                              width: 12,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Rewards(),
                                      ));
                                },
                                child: const Text(
                                  "Rewards",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.width * 0.90,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 3, 31, 79),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Image.asset('assets/images/offer.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child:
                              Image.asset('assets/images/offer1.png'),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                               width: MediaQuery.of(context).size.width * 0.3,
                              child: const Text(
                                'Mobile Recharge Offer',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: const Text(
                                'Use Code FIRST20',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Get 20 % Instant cashback upto Rs 50 on your first mobile recharge. T&C apply',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
              height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.width * 0.90,
                  decoration: BoxDecoration(
                      color: const Color(0xff3B2042),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Image.asset('assets/images/offer.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child:
                              Image.asset('assets/images/offer2.png'),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                               width: MediaQuery.of(context).size.width * 0.3,
                              child: const Text(
                                'DTH Recharge Offer',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: const Text(
                                'Use Code FIRSDTHT20',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Get 20 % Instant cashback upto Rs 50 on your first DTH recharge. T&C apply',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
              height: 15,
              ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.width * 0.90,
                  decoration: BoxDecoration(
                      color: const Color(0xff422028),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Image.asset('assets/images/offer.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child:
                              Image.asset('assets/images/offer3.png'),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                               width: MediaQuery.of(context).size.width * 0.3,
                              child: const Text(
                                'Flipcart Shopping Offer',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Shop on Flipcart using our payment system to get upto 50% cashback . T&C appply',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.width * 0.90,
                  decoration: BoxDecoration(
                      color: const Color(0xff242042),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Image.asset('assets/images/offer.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child:
                              Image.asset('assets/images/offer4.png'),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                               width: MediaQuery.of(context).size.width * 0.3,
                              child: const Text(
                                'Money Transfer Offer',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Get a scratch card with assuerd casbck and coupons on Money Transfer of Rs 500 or more . T&C apply',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),  
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.width * 0.90,
                  decoration: BoxDecoration(
                      color: const Color(0xff3B2042),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Image.asset('assets/images/offer.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child:
                              Image.asset('assets/images/offer5.png'),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                               width: MediaQuery.of(context).size.width * 0.3,
                              child: const Text(
                                'Rs 50 Off on Flights',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: const Text(
                                'Get instant discount on flat 50 Rs on Flight ticket booking. T&C apply',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Go to offer page',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
