import 'dart:html';

import 'package:flutter/material.dart';
import 'package:instant_pay/recieve_screen.dart';
import 'package:instant_pay/screens/balance_screen.dart';
import 'package:instant_pay/screens/notification_screen.dart';
import 'package:instant_pay/screens/offer_screen.dart';
import 'package:instant_pay/screens/profile_screen.dart';
import 'package:instant_pay/screens/reward_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191B22),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                                      builder: (context) => Notifications()));
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
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Home(),
                                      ));
                                },
                                child: const Text(
                                  "Home",
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
                                        builder: (context) => Balance(),
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Offers(),
                                      ));
                                },
                                child: const Text(
                                  "Offers",
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
                                        builder: (context) => Rewards(),
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
                height: 15,
                // width: 10,
              ),
              ListTile(
                title: const Text("Money Transfer",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                trailing: InkWell(
                  onTap: () {},
                  child: Container(
                      height: 22,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xff343645),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "More",
                            style: TextStyle(color: Color(0xff696D78)),
                          ),
                          Icon(
                            Icons.arrow_right_rounded,
                            color: Color(0xff696D78),
                          )
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromRGBO(91, 46, 98, 1),
                          ),
                          height: 43,
                          width: 165,
                          child: Row(children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xff4D3473),
                              ),
                              height: 43,
                              width: 43,
                              child: const Icon(
                                Icons.qr_code_scanner_rounded,
                                color: Color(0xffffffff),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              "Scan QR Code",
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff2E624C),
                      ),
                      height: 43,
                      width: 165,
                      child: Row(children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromRGBO(0, 210, 210, 0.15),
                          ),
                          height: 43,
                          width: 43,
                          child: const Icon(
                            Icons.person_add_alt_rounded,
                            color: Color(0xffB0BEC5),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Send to Contact",
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromRGBO(94, 98, 46, 1),
                          ),
                          height: 43,
                          width: 165,
                          child: Row(children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color.fromRGBO(112, 255, 0, 0.15),
                              ),
                              height: 43,
                              width: 43,
                              child: const Icon(
                                Icons.account_balance,
                                color: Color(0xffB0BEC5),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              "Send To Bank",
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff622E3A),
                      ),
                      height: 43,
                      width: 165,
                      child: Row(children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromRGBO(210, 0, 189, 0.15),
                          ),
                          height: 43,
                          width: 43,
                          child: const Icon(
                            Icons.replay_rounded,
                            color: Color(0xffB0BEC5),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Self Transfer",
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              ListTile(
                title: const Text("Recharge & Bill Payments",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                trailing: InkWell(
                  onTap: () {},
                  child: Container(
                      height: 22,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xff343645),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "More",
                            style: TextStyle(color: Color(0xff696D78)),
                          ),
                          Icon(
                            Icons.arrow_right_rounded,
                            color: Color(0xff696D78),
                          )
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff32652A),
                          ),
                          height: 43,
                          width: 165,
                          child: Row(children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xff33734A),
                              ),
                              height: 43,
                              width: 43,
                              child: const Icon(
                                Icons.smartphone_rounded,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Mobile Recharge",
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff652A5F),
                      ),
                      height: 43,
                      width: 165,
                      child: Row(children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff7C375A),
                          ),
                          height: 43,
                          width: 43,
                          child: const Icon(
                            Icons.sunny,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Electricity Bill",
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff652A2A),
                          ),
                          height: 43,
                          width: 165,
                          child: Row(children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xff614A2D),
                              ),
                              height: 43,
                              width: 43,
                              child: const Icon(
                                Icons.play_circle_outline,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              "DTH Recharge",
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff2A4065),
                      ),
                      height: 43,
                      width: 165,
                      child: Row(children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff4A3F6B),
                          ),
                          height: 43,
                          width: 43,
                          child: const Icon(
                            Icons.receipt_long_rounded,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Postpaid bill",
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Ticket Booking",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white))),
                  ]),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 59,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(36, 32, 66, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child: Icon(Icons.movie, color: Colors.white)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 60,
                      width: 59,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(36, 32, 66, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child: Icon(Icons.train, color: Colors.white)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 60,
                      width: 59,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(36, 32, 66, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child:
                              Icon(Icons.directions_bus, color: Colors.white)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 60,
                      width: 59,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(36, 32, 66, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child: Icon(Icons.flight, color: Colors.white)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 60,
                      width: 59,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(36, 32, 66, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child: Icon(Icons.garage, color: Colors.white)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("More Services",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white))),
                  ]),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 59,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(36, 32, 66, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child: Icon(Icons.bar_chart, color: Colors.white)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 60,
                      width: 59,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(36, 32, 66, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child:
                              Icon(Icons.percent_rounded, color: Colors.white)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 60,
                      width: 59,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(36, 32, 66, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child:
                              Icon(Icons.favorite_border, color: Colors.white)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 60,
                      width: 59,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(36, 32, 66, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child: Icon(Icons.manage_search_outlined,
                              color: Colors.white)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text("Recent Transactions",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff08348A),
                      minimumSize: const Size(114, 45)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Recieve(),
                        ));
                  },
                  child: const Text(
                    "Recieve Money",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xff191B22),
                      backgroundImage: AssetImage('assets/images/dp1.png'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xff191B22),
                      backgroundImage: AssetImage('assets/images/dp2.png'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xff191B22),
                      backgroundImage: AssetImage('assets/images/dp3.png'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xff191B22),
                      backgroundImage: AssetImage('assets/images/dp4.png'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xff191B22),
                      backgroundImage: AssetImage('assets/images/dp5.png'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
