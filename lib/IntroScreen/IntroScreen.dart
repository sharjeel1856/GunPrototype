import 'package:flutter/material.dart';
import 'package:gun_project/HomeScreen/HomeScreen.dart';
import 'package:gun_project/LoginScreen/LoginScreen.dart';

class Introscreen extends StatelessWidget {
  const Introscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1CA21),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Row(
              children: [
                Text(
                  '  Get Started',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'PTSerif',
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                Text(
                  ' Percision With A \n Hand Scan - Perfect \n Firearm Match.',
                  style: TextStyle(
                      color: Colors.black, fontSize: 33, fontFamily: 'PTSerif'),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Homescreen()));
                    },
                    child: const Text(
                      'Skip Now',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'PTSerif'),
                    )),
                const SizedBox(
                  width: 160,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginscreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(20, 20),
                    padding: const EdgeInsets.all(8),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'PTSerif'),
                  ),
                )
              ],
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
