import 'package:flutter/material.dart';

import '../SelectGuns/SelectGuns.dart';

class Mycontainer extends StatefulWidget {
  final String imagePath;
  final String title;
  final String subTitle;
  const Mycontainer(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subTitle});

  @override
  State<Mycontainer> createState() => _MycontainerState();
}

class _MycontainerState extends State<Mycontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      height: 300,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        image: DecorationImage(
          image: AssetImage(widget.imagePath), // Your image path
          fit: BoxFit.cover, // Adjust the image to cover the container
        ),
      ),
      child: Stack(
        children: [
          // Top right corner: Favorite icon button
          Positioned(
            top: 10,
            right: 10,
            child: IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.white),
              onPressed: () {
                // Handle favorite button press
              },
            ),
          ),
          // Bottom center: Text button
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Selectguns()));
                },
                child: Text(
                  widget.title,
                  style: TextStyle(
                    fontFamily: 'PTSerif',
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 30,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 3,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                widget.subTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  fontFamily: 'PTSerif',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
