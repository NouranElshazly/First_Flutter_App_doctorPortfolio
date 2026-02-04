import 'package:flutter/material.dart';

class CallAction extends StatelessWidget {
  const CallAction({super.key, required this.callCount});
  final String callCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.call, color: Colors.white),
          SizedBox(width: 5),
          Text(callCount, style: TextStyle(fontSize: 16, color: Colors.white)),
        ],
      ),
    );
  }
}
