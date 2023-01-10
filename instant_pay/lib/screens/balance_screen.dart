import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instant_pay/screens/home_screen.dart';
import 'package:instant_pay/screens/notification_screen.dart';
import 'package:instant_pay/screens/offer_screen.dart';
import 'package:instant_pay/screens/profile_screen.dart';
import 'package:instant_pay/screens/reward_screen.dart';
import 'dart:html';

class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Home(),
                                      ));
                                },
                                child: const Text(
                                  "Home",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                            const SizedBox(
                              width: 12,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Balance(),
                                      ));
                                },
                                child: const Text(
                                  "Balance",
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
                                        builder: (context) => const Offers(),
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
                height: 20,
              ),
              SingleChildScrollView(
                child: Container(
                  width: 400,
                  height: 470,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff1F222A),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: IconButton(
                          onPressed: () {
                            Navigator.pop(context, MaterialPageRoute(builder: (context) => const Home()));
                          },
                          icon: const Icon(Icons.arrow_circle_left_outlined),
                          color: Colors.white,
                        ),
                        title: Column(
                          children: const [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Portfolio Value",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "\$54,375",
                              style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffB0BEC5)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "In 3 Accounts",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffB0BEC5)),
                            ),
                          ],
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bar_chart,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 140,
                              height: 98,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xff652A5F)),
                              child: Column(
                                children: const [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Federel Bank",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "1142524899652",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "16,456.05",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 140,
                              height: 98,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xff442A65)),
                              child: Column(
                                children: const [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "States Bank",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "1142524899652",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "2045.05",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
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
                            Container(
                              width: 140,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xff2A6550)),
                              child: Column(
                                children: const [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Best Bank",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "1142521547852",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "35873.5",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 98,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 43,
                                  ),
                                  ListTile(
                                    trailing: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.chevron_right,
                                          color: Colors.white,
                                          size: 35,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Profile(),
                                    ));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff343645),
                                shape: const StadiumBorder(),
                                minimumSize: const Size(370, 55)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Add / Manage Accounts",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ],
                            ))
                      ])
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
