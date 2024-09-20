import 'package:flutter/material.dart';
import 'package:gun_project/UserProfile/UserProfile.dart';

import '../ScanNow/ScanNow.dart';
import 'HomeScreen.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _currentPage = 0;

  // List of pages to display for each BottomNavigationBarItem
  final List<Widget> _pages = [
    Homescreen(), // First Page (Home)
    const Scannow(), // Second Page (Scanner)
    const Userprofile() // Third Page (Settings)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Display the selected page
      body: _pages[_currentPage],

      // BottomNavigationBar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color(0xFFF1CA21),
              spreadRadius: 7,
              blurRadius: 20,
              offset: Offset(-2, -5))
        ]),
        child: BottomNavigationBar(
          currentIndex: _currentPage,
          onTap: (value) {
            setState(() {
              _currentPage = value; // Change the current page index on tap
            });
          },
          backgroundColor: Color(0xFFF1CA21),
          elevation: 20,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
                size: 35,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.document_scanner,
                color: Colors.black,
                size: 35,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
                size: 30,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
