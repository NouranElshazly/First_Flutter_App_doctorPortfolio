import 'package:doctor_profile_ui/widgets/detail_tiles.dart';
import 'package:flutter/material.dart';

class DoctorAddress extends StatelessWidget {
  const DoctorAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.blue.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DetailTiles(
            icon: Icons.location_on,
            detail: '123 Main Street, City, State 12345',
          ),
          SizedBox(height: 10),
          DetailTiles(icon: Icons.phone, detail: '+123 456 7890'),
          SizedBox(height: 10),
          DetailTiles(icon: Icons.email, detail: 'info@doctor.com'),
        ],
      ),
    );
  }
}
