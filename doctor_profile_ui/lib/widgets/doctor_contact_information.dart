import 'package:doctor_profile_ui/widgets/detail_tiles.dart';
import 'package:flutter/material.dart';

class DoctorContactInformation extends StatelessWidget {
  const DoctorContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Contact Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Icon(Icons.edit, color: Colors.blue),
          ],
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.blue.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DetailTiles(icon: Icons.web, detail: 'www.doctorwebsite.com'),
              SizedBox(height: 10),
              DetailTiles(icon: Icons.facebook, detail: 'facebook.com/doctor'),
              SizedBox(height: 10),
              DetailTiles(
                icon: Icons.wechat_sharp,
                detail: 'twitter.com/doctor',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
