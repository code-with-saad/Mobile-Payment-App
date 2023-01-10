import 'package:flutter/material.dart';
import 'package:instant_pay/recieve_screen.dart';
import 'package:instant_pay/screens/balance_screen.dart';
import 'package:instant_pay/screens/home_screen.dart';
import 'package:instant_pay/screens/notification_screen.dart';
import 'package:instant_pay/screens/offer_screen.dart';
import 'package:instant_pay/screens/profile_screen.dart';
import 'dart:html';

class Rewards extends StatefulWidget {
  const Rewards({super.key});

  @override
  State<Rewards> createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
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
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(15)),
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
                children:[ ListTile(
                  leading: InkWell(
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => const Profile(),
                    ));
                    },
                    child: const CircleAvatar(backgroundImage: AssetImage("assets/images/mydp.png"),)),
                  title:
                  TextField(
                    style: const TextStyle(
                      color: Colors.white
                    ),
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 2, color: Color(0xff343645))
                      ),
                      hintText: "Search Users, ID's etc",
                      hintStyle: const TextStyle(color: Colors.white),
                      suffixIcon: const Icon(Icons.search, color: Colors.white,),
                    ),
                  ),
                    trailing: IconButton(
                      icon: const Icon(Icons.notifications, size: 30, color: Colors.white,), onPressed: (){
                        Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) => const Notifications()));
                      },
                    )
                ),
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
                                      color: Colors.white,),
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
                                  Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => const Rewards(),
                                ));
                                },
                                child: const Text(
                                  "Rewards",
                                  style: TextStyle(color: Colors.blue,
                                  fontWeight: FontWeight.w900),
                                )),
                          ],
                    ),
                ),
                ]
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 336,
              height: 188,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xff1F222A)
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Casbacks earned", style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text("\$507", style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffB0BEC5)
                  ),),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text("+ 88 Rs  This month", style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffAAAAAA)
                  ),),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Recieve(),
                        ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff343645),
                        shape: const StadiumBorder(),
                        minimumSize: const Size(310, 43)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "View your cashback history",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffFFEDF1)),
                                ),
                              ],
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const ListTile(
              title: Text("Scrachcards won", style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 101,
                    decoration: BoxDecoration(
                      color: const Color(0xff242042),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 101,
                    decoration: BoxDecoration(
                      color: const Color(0xff242042),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 101,
                    decoration: BoxDecoration(
                      color: const Color(0xff242042),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 101,
                    decoration: BoxDecoration(
                      color: const Color(0xff242042),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 101,
                    decoration: BoxDecoration(
                      color: const Color(0xff242042),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 101,
                    decoration: BoxDecoration(
                      color: const Color(0xff242042),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 101,
                    decoration: BoxDecoration(
                      color: const Color(0xff242042),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 101,
                    decoration: BoxDecoration(
                      color: const Color(0xff242042),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 101,
                    decoration: BoxDecoration(
                      color: const Color(0xff242042),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 101,
                    decoration: BoxDecoration(
                      color: const Color(0xff242042),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              title: Text("Collect Rewards", style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),),
            ),
            const SizedBox(
              height: 10,
            ),

            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.93,
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
                              Image.asset('assets/images/reward1.png'),
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
                                'Flat 50 off On food Delivery',
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
                                'On orders above 99 on Swaggy, Somato',
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
                                children: [
                                  Container(
                                    width: 101,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color.fromRGBO(250, 77, 150, 0.15)
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Collect Now',
                                        style: TextStyle(
                                          color: Color(0xffFA4D96),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
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
              height: 10,
            ),

            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.93,
                  decoration: BoxDecoration(
                      color: const Color(0xff422038),
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
                              Image.asset('assets/images/reward2.png'),
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
                                '20% Cashback On Amazon',
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
                                'Up to Rs 150 Minimum Order 1000',
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
                                children: [
                                  Container(
                                    width: 101,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color.fromRGBO(250, 77, 150, 0.15)
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Collect Now',
                                        style: TextStyle(
                                          color: Color(0xffFA4D96),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
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