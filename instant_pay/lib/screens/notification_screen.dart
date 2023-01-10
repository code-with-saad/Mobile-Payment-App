import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instant_pay/screens/home_screen.dart';
import 'dart:html';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191B22),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                    const SizedBox(
                      height: 40,
                    ),
                      Container(
                      width: MediaQuery.of(context).size.width * 0.97,
                      height: MediaQuery.of(context).size.height * 0.90,
                      decoration: BoxDecoration(
                      color: const Color(0xff1F222A),
                      borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            title: const Text("Notifications", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                              ),),
                              trailing: IconButton(onPressed: (){
                                Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => const Home()));
                              }, icon: const Icon(Icons.cancel_outlined,color: Colors.white,),),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 16,
                              ),
                              Text("Recharge Completed", style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                              ),),
                            ],
                          ),
                          ListTile(
                            title: const Text("Your last recharge on 9847229989 of 199 rs has been succesfully completed.", style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff9A9B9B)
                              ),),
                              subtitle: const Text("May 20  - 12:32 Pm", style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff9A9B9B)
                              ),),
                              trailing: CircleAvatar(
                                child: IconButton(onPressed: (){}, icon: const Icon(Icons.notifications, color: Color(0xff97A3AB),),),
                              ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 16,
                              ),
                              Text("Money Recived", style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                              ),),
                            ],
                          ),
                          ListTile(
                            title: const Text("Your account ***21445 has been recieved an amount of Rs 1000 using upi transaction.", style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff9A9B9B)
                              ),),
                              subtitle: const Text("May 20  - 12:45 Pm", style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff9A9B9B)
                              ),),
                              trailing: CircleAvatar(
                                child: IconButton(onPressed: (){}, icon: const Icon(Icons.notifications, color: Color(0xff97A3AB),),),
                              ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 16,
                              ),
                              Text("Offer Unlocked", style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                              ),),
                            ],
                          ),
                          ListTile(
                            title: const Text("You have an unlockd offer avilable go to offer section or tap to view the offer.", style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff9A9B9B)
                              ),),
                              subtitle: const Text("May 20  - 2:45 Pm", style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff9A9B9B)
                              ),),
                              trailing: CircleAvatar(
                                child: IconButton(onPressed: (){}, icon: const Icon(Icons.notifications, color: Color(0xff97A3AB),),),
                              ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ListTile(
                            title: const Text("Recent Notifications", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                              ),),
                              trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_drop_down_circle_outlined, color: Colors.white,),),
                          ),
                        ],
                      ),
                    ),
                ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}