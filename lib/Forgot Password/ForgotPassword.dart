import 'package:flutter/material.dart';
import 'package:gun_project/LoginScreen/LoginScreen.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            const Text(
              'Logo',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 45,
            ),
            const Row(
              children: [
                Text(
                  ' Update Your\n Password!',
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
            const Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '   The password must include at least 8 characters, with\n    uppercase and lowercase letter, numbers and special \n    characters.',
                    style: TextStyle(
                        fontFamily: 'PTSerif',
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Old Password',
                        hintStyle: const TextStyle(
                            fontFamily: 'PTSerif',
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'New Password',
                        hintStyle: const TextStyle(
                            fontFamily: 'PTSerif',
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        hintStyle: const TextStyle(
                            fontFamily: 'PTSerif',
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 320,
              decoration: BoxDecoration(
                color: Color(0xFFF1CA21),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text(
                  "Submit",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: 'PTSerif',
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'want to go back?',
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
                        'ClicK Here',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'PTSerif',
                            color: Colors.black),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
