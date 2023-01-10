import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instant_pay/screens/home_screen.dart';
import 'dart:html';

class Recieve extends StatefulWidget {
  const Recieve({super.key});

  @override
  State<Recieve> createState() => _RecieveState();
}

class _RecieveState extends State<Recieve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191B22),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff1F222A)),
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text(
                          "Recieve Money",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home()));
                          },
                          icon: const Icon(Icons.cancel_outlined),
                          color: Colors.white,
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 288.05,
                          height: 292,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/qr.png'),
                                  fit: BoxFit.cover)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const ListTile(
                title: Text("Other Options", style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xff343645)
              ),
              child: Center(
                child: ListTile(
                  title: const Text("Your Pay ID", style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    const Text("xyz@524899652", style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffB0BEC5)
                  ),),
                  const SizedBox(
                    width: 5,
                  ),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.copy, color: Color(0xffB0BEC5),))
                    ],
                  )
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xff343645)
              ),
              child: Center(
                child: ListTile(
                  title: const Text("Show bank account details", style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),),
                  trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.chevron_right, color: Colors.white,))
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
