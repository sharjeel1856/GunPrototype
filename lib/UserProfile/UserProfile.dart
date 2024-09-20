import 'package:flutter/material.dart';
import 'package:gun_project/Forgot%20Password/ForgotPassword.dart';
import 'package:gun_project/UpdateProfile/Update%20Profile.dart';

import '../LoginScreen/LoginScreen.dart';
import '../SelectGuns/SelectGuns.dart';

class Userprofile extends StatelessWidget {
  const Userprofile({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildSingleAccountTile(
      String accountName, {
      required IconData leadingIcon, // Pass icon for each row
      required IconData trailingIcon, // Pass trailing icon for each row
      String? trailingText, // Optional text before the trailing icon
      required Widget destinationScreen,
    }) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        child: ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => destinationScreen));
          },
          title: Container(
            width: 120,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    // Leading Icon (Before the account name)
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1CA21),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(
                          leadingIcon, // Use the passed leading icon here
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    // Account Name
                    Text(
                      accountName,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'PTSerif'),
                    ),
                    const Spacer(), // Push trailing icon and text to the right
                    // Optional trailing text (before the icon)
                    if (trailingText !=
                        null) // Only show this if text is passed
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          trailingText,
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 12,
                              fontFamily: 'PTSerif'),
                        ),
                      ),
                    // Trailing Icon (After the optional text)
                    Icon(
                      trailingIcon, // Use the passed trailing icon here
                      size: 20,
                      color: Colors.grey[500],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50), // Adjust as necessary
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        maxRadius: 50,
                        child: const Image(
                          image: AssetImage('assets/images/user2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Molin free',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'PTSerif'),
                      ),
                      const SizedBox(height: 2),
                      const Text(
                        'molin@gmail.com',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'PTSerif',
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                '      Settings',
                style: TextStyle(
                    fontFamily: 'PTSerif',
                    fontWeight: FontWeight.w900,
                    color: Colors.grey,
                    fontSize: 15),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  buildSingleAccountTile('Edit Profile',
                      leadingIcon: Icons.person,
                      trailingIcon: Icons.chevron_right,
                      destinationScreen: Update_profile()),
                  buildSingleAccountTile('Password Change',
                      leadingIcon: Icons.lock_outline_rounded,
                      trailingIcon: Icons.chevron_right,
                      destinationScreen: Forgotpassword()),
                  buildSingleAccountTile('Favourites',
                      leadingIcon: Icons.favorite_border,
                      trailingIcon: Icons.chevron_right,
                      destinationScreen: Selectguns()),
                  buildSingleAccountTile('Languages',
                      leadingIcon: Icons.translate,
                      trailingIcon: Icons.chevron_right,
                      trailingText: 'English',
                      destinationScreen: Forgotpassword()),
                  buildSingleAccountTile('Notifications',
                      leadingIcon: Icons.notifications,
                      trailingIcon: Icons.chevron_right,
                      trailingText: 'Enabled',
                      destinationScreen: Forgotpassword()),
                  buildSingleAccountTile('Theme',
                      leadingIcon: Icons.color_lens_outlined,
                      trailingIcon: Icons.chevron_right,
                      trailingText: 'Light',
                      destinationScreen: Forgotpassword())
                ],
              ),
              const SizedBox(height: 10),
              Center(
                child: InkWell(
                  onTap: () {
                    // Navigate to another screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Loginscreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1CA21),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        "Log Out",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'PTSerif',
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                  height: 20), // Extra space at the bottom for scrolling
            ],
          ),
        ),
      ),
    );
  }
}
