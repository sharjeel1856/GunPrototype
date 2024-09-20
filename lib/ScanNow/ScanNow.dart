import 'package:flutter/material.dart';
import 'package:gun_project/LoginScreen/LoginScreen.dart';

class Scannow extends StatelessWidget {
  const Scannow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Loginscreen()));
          },
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              maxRadius: 70,
              child: const Image(
                image: AssetImage('assets/images/user2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Molin free',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                fontFamily: 'PTSerif'),
          ),
          const SizedBox(
            height: 2,
          ),
          const Text(
            'molin@gmail.com',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w900,
                fontFamily: 'PTSerif',
                color: Colors.grey),
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '        Start Your Scan Now!',
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
                '        Tap  the button below to start scanning \n         instantly. Quick and easy, get your \n         recommendation in on time!',
                style: TextStyle(
                  fontFamily: 'PTSerif',
                  color: Colors.grey,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
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
              width: 280,
              decoration: BoxDecoration(
                color: Color(0xFFF1CA21),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text(
                  "Scan Now",
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
    );
  }
}
