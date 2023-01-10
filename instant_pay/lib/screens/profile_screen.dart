import 'package:flutter/material.dart';
import 'dart:html';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191B22),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: MediaQuery.of(context).size.width * 0.98,
                // height: MediaQuery.of(context).size.height * 0.45,
                height: 260,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff1F222A)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/mydp.png'),
                        radius: 30,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Elsa",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Image.asset('assets/images/award.png'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Level 4 Ace Member',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 15,
                            width: 50,
                          ),
                          Row(
                            children: const [
                              Text(
                                "85%",
                                style: TextStyle(
                                    color: Color(0xffB0BEC5),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Row(children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                height: 5,
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: const BoxDecoration(
                                    color: Color(0xff4D5DFA),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomLeft: Radius.circular(30))),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                height: 5,
                                width: MediaQuery.of(context).size.width * 0.05,
                                decoration: const BoxDecoration(
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30),
                                        bottomRight: Radius.circular(30))),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Lv 5',
                              style: TextStyle(
                                  color: Color(0xffB0BEC5),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600),
                            )
                          ]),
                        ],
                      ),
                      Expanded(
                        child: ListTile(
                          trailing: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.cancel_outlined,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 100,
                          ),
                          Column(
                            children: const [
                              Text(
                                '1,208',
                                style: TextStyle(
                                    color: Color(0xff4D5DFA),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Transactions',
                                style: TextStyle(
                                    color: Color(0xff939FA4),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Container(
                              height: 55,
                              width: 1,
                              color: Colors.grey,
                            ),
                          ),
                          Column(
                            children: const [
                              Text(
                                '726',
                                style: TextStyle(
                                    color: Color(0xff4D5DFA),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Points',
                                style: TextStyle(
                                    color: Color(0xff939FA4),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Container(
                              height: 55,
                              width: 1,
                              color: Colors.grey,
                            ),
                          ),
                          Column(
                            children: const [
                              Text(
                                '8',
                                style: TextStyle(
                                    color: Color(0xff4D5DFA),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Rank',
                                style: TextStyle(
                                    color: Color(0xff939FA4),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(width: 40),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                    width: 89,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff343645),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Explore",
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 15,
                                          color: Colors.white,
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 100,
                          ),
                          Container(
                            width: 89,
                            height: 28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xff343645)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Edit Profile",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.manage_accounts_rounded,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 89,
                            height: 28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xff343645)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Settings",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 89,
                            height: 28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xff343645)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Share",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.share,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.98,
            height: 270,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xff1F222A)),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.receipt,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    "All Transactions",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.pending_actions_outlined,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    "Pending Transactions",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.watch_later_outlined,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    "Refund status",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.warning_amber,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    "Raise an issue",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    "Help and Support",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.98,
            height: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xff1F222A)),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    "About Us",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.timer_outlined,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    "Terms and Conditions",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.help_outline,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    "Feedback",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
