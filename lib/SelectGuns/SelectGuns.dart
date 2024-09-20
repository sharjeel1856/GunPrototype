import 'package:flutter/material.dart';

import '../LoginScreen/LoginScreen.dart';

class Selectguns extends StatelessWidget {
  const Selectguns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Container(
                  height: 250,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.grey, // Move the color here
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.antiAlias, //
                  child: Image.asset(
                    'assets/images/gun.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey, // Move the color here
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAlias, //
                      child: Image.asset(
                        'assets/images/gun.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Container(
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey, // Move the color here
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAlias, //
                      child: Image.asset(
                        'assets/images/gun.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Container(
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey, // Move the color here
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAlias, //
                      child: Image.asset(
                        'assets/images/gun.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  ' Hey, \n Register Now!',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'PTSerif'),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  '   I Am Old User/',
                  style: TextStyle(
                      fontFamily: 'PTSerif',
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '    Start Your Scan Now!',
                  style: TextStyle(
                    fontFamily: 'PTSerif',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '    Tap  the button below to start scanning \n    instantly. Quick and easy, get your \n    recommendation in on time!',
                  style: TextStyle(
                    fontFamily: 'PTSerif',
                    color: Colors.grey,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 145,
            ),
            InkWell(
              onTap: () {
                // Navigate to another screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const Loginscreen(), // replace with your target screen
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 280,
                decoration: BoxDecoration(
                  color: const Color(0xFFF1CA21),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Text(
                    "I want to Buy",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: 'PTSerif',
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
