import 'package:flutter/material.dart';

import '../LoginScreen/LoginScreen.dart';

class Update_profile extends StatelessWidget {
  const Update_profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Logo',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Loginscreen()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  maxRadius: 60,
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
                    '    Update your profile details!',
                    style: TextStyle(
                        fontFamily: 'PTSerif',
                        fontWeight: FontWeight.w900,
                        color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Full Name',
                          hintStyle: const TextStyle(
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.w500,
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
                          hintText: 'Last Name',
                          hintStyle: const TextStyle(
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.w500,
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
                  ],
                ),
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
                  width: 310,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
