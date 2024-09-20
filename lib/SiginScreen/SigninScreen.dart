import 'package:flutter/material.dart';
import 'package:gun_project/LoginScreen/LoginScreen.dart';

class Signinscreen extends StatelessWidget {
  const Signinscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            Row(
              children: [
                Text(
                  'Hey,\nRegister Now!',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'PTSerif'),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Row(
                children: [
                  Text(
                    'I am A Old User/',
                    style: TextStyle(
                        fontFamily: 'PTSerif',
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loginscreen()));
                      },
                      child: const Text(
                        'Create New',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'PTSerif',
                            color: Colors.black),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Join Us Today!',
                  style: TextStyle(
                      fontFamily: 'PTSerif',
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  'Tap the link below to complete your sign-up\non our webite. It only takes a moment, and\nyou"ll be all set to go!',
                  style: TextStyle(
                      fontFamily: 'PTSerif',
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            InkWell(
              onTap: () {
                // Navigate to another screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Loginscreen(), // replace with your target screen
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xFFF1CA21),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Text(
                    "Register Now",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: 'PTSerif',
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
