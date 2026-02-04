import 'package:flutter/material.dart';

class DetailTiles extends StatelessWidget {
  const DetailTiles({super.key, required this.icon, required this.detail});

  final IconData icon;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 14,
          child: Icon(icon, color: Colors.white, size: 20),
        ),

        SizedBox(width: 10),
        Text(detail, style: TextStyle(fontSize: 16, color: Colors.black)),
      ],
    );
  }
}
