import 'package:doctor_profile_ui/widgets/c_t_a_buttons.dart';
import 'package:doctor_profile_ui/widgets/call_action.dart';
import 'package:doctor_profile_ui/widgets/detail_tiles.dart';
import 'package:doctor_profile_ui/widgets/doctor_address.dart';
import 'package:doctor_profile_ui/widgets/doctor_contact_information.dart';
import 'package:doctor_profile_ui/widgets/profile_header.dart';
import 'package:flutter/material.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
        ),
        title: Center(
          child: Text(
            'Doctor Profile',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // header
            ProfileHeader(),
            // about
            SizedBox(height: 30),
            Text(
              'About ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              style: TextStyle(fontSize: 16),
            ),
            // address information
            SizedBox(height: 20),
            DoctorAddress(),
            SizedBox(height: 10),

            Divider(height: 2, color: Colors.grey),
            SizedBox(height: 10),

            // contact information
            DoctorContactInformation(),
            SizedBox(height: 3),
            CTAButtons(title: 'Book Appointment', color: Colors.blue),
            SizedBox(height: 2),
            CTAButtons(title: ' Chat With Doctor', color: Colors.green),
            // actions
          ],
        ),
      ),
    );
  }
}
