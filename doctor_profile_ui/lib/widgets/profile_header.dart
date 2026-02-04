import 'package:doctor_profile_ui/widgets/call_action.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: EdgeInsets.all(5)),

        ClipOval(
          child: Image.network(
            'https://i.etsystatic.com/19468294/r/il/ec69f9/5951053912/il_570xN.5951053912_1weo.jpg',
            width: 130,
            height: 130,
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dr.Salma Khan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Text(
              'Dermatologist',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber),
                Text('3', style: TextStyle(fontSize: 16, color: Colors.grey)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                CallAction(callCount: '1'),
                SizedBox(width: 20),
                CallAction(callCount: '2'),
                SizedBox(width: 20),
                CallAction(callCount: '3'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
