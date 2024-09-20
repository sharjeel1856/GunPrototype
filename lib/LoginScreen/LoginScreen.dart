import 'package:flutter/material.dart';
import 'package:gun_project/SiginScreen/SigninScreen.dart';

import '../Forgot Password/ForgotPassword.dart';
import '../HomeScreen/BottomNavigationBar.dart';
import '../IntroScreen/IntroScreen.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Text(
                      'Hey,\nLogin Now!',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'PTSerif'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Text(
                    'I am A Old User /',
                    style: TextStyle(
                        fontFamily: 'PTSerif',
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Signinscreen()));
                      },
                      child: Text(
                        'Create New',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'PTSerif',
                            color: Colors.grey),
                      )),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Exarth',
                          hintStyle: TextStyle(fontFamily: 'PTSerif'),
                          filled: true,
                          fillColor: Colors.grey[200],
                          suffixIcon:
                              Icon(Icons.check_circle, color: Colors.black),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontFamily: 'PTSerif',
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text(
                      'Forgot Password? /',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'PTSerif',
                          color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Forgotpassword()));
                        },
                        child: const Text(
                          'Reset',
                          style: TextStyle(
                              fontFamily: 'PTSerif',
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w900),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              InkWell(
                onTap: () {
                  // Navigate to another screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BottomNavigationBarExample(), // replace with your target screen
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: 310,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1CA21),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Login Now",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: 'PTSerif',
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Introscreen(), // replace with your target screen
                      ),
                    );
                  },
                  child: const Text(
                    'Skip Now',
                    style: TextStyle(
                        fontFamily: 'PTSerif',
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w900),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
