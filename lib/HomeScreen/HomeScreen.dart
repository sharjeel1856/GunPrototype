import 'package:flutter/material.dart';

import 'Container.dart';
import 'circle.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  //BottomNavigationBar Functionality

  //for 'Guns for you'

  final List<Map<String, String>> _gunsData = [
    {
      'imagePath': 'assets/images/adds.jpg',
      'heading': 'Revolver',
      'subheading': 'Classic and reliable',
    },
    {
      'imagePath': 'assets/images/adds.jpg',
      'heading': 'Glock',
      'subheading': 'Modern and versatile',
    },
    {
      'imagePath': 'assets/images/adds.jpg',
      'heading': 'Single Action',
      'subheading': 'Precise and powerful',
    },
    {
      'imagePath': 'assets/images/adds.jpg',
      'heading': 'Compact',
      'subheading': 'Small but mighty',
    },
    {
      'imagePath': 'assets/images/adds.jpg',
      'heading': 'Gun 5',
      'subheading': 'Description for gun 5',
    },
    {
      'imagePath': 'assets/images/adds.jpg',
      'heading': 'Gun 6',
      'subheading': 'Description for gun 6',
    },
  ];

  PageController _pageController = PageController();
  int _currentPage = 0;

  // For types of guns
  final List<String> _guns = [
    'Revlover',
    'Glock',
    'Single action',
    'Compact',
    'gun5',
    'gun6'
  ];

  final List<String> _images = [
    'assets/images/Revolver.png',
    'assets/images/Revolver.png',
    'assets/images/Revolver.png',
    'assets/images/Revolver.png',
    'assets/images/Revolver.png',
    'assets/images/Revolver.png'
  ];

  // Guns for you
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Container(
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        maxRadius: 25,
                        child: const Image(
                          image: AssetImage('assets/images/user2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, Exarth',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'PTSerif'),
                          ),
                          Text(
                            ' exarlths@gmail.com',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'PTSerif',
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.notifications))
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Types of guns',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'PTSerif'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'PTSerif',
                            color: Colors.blue),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: 110,
                    child: ListView.builder(
                      itemCount: _guns.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return MyCircle(
                          gunImage: _images[index],
                          gunName: _guns[index],
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Guns for You',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'PTSerif'),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    // PageView.builder for horizontal scrolling
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:
                            300, // Adjust height to accommodate the entire container
                        child: PageView.builder(
                          controller: _pageController,
                          onPageChanged: (int index) {
                            setState(() {
                              _currentPage = index;
                            });
                          },
                          itemCount:
                              _gunsData.length, // Number of items in the list
                          itemBuilder: (context, index) {
                            final gun = _gunsData[
                                index]; // Get the data for the current page
                            return Mycontainer(
                              imagePath: gun['imagePath']!,
                              title: gun['heading']!,
                              subTitle: gun['subheading']!,
                            );
                          },
                        ),
                      ),
                    ),
                    // Dots indicator
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(_gunsData.length, (index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 4.0, vertical: 10.0),
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentPage == index
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        );
                      }),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
