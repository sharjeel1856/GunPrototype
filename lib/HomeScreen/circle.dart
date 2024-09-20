import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  final String gunName;
  final String gunImage;
  const MyCircle({
    super.key,
    required this.gunName,
    required this.gunImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey[300],
            maxRadius: 38,
            child: StreamBuilder<Object>(
                stream: null,
                builder: (context, snapshot) {
                  return Image.asset(
                    gunImage,
                    fit: BoxFit.cover,
                  );
                }),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          gunName,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w900,
              fontFamily: 'PTSerif',
              color: Colors.grey),
        ),
      ],
    );
  }
}
