import 'package:flutter/material.dart';

class TextThin extends StatelessWidget {
  TextThin({super.key, required this.text, required this.horizontal});
  String text;
  double horizontal;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.grey[600], fontSize: 16, fontWeight: FontWeight.w400),
      ),
    );
  }
}
