import 'package:flutter/material.dart';
import 'package:login_register/widget/text_thin.dart';

class MyTextForm extends StatelessWidget {
  MyTextForm({
    super.key,
    required this.obscureText,
    required this.keyboardType,
    required this.icon,
    required this.text,
    this.onFieldSubmitted,
  });
  bool obscureText = true;
  TextInputType keyboardType;
  IconData icon;
  String text;
  void Function(String value)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      style: const TextStyle(color: Colors.white, fontSize: 20),
      obscureText: obscureText,
      keyboardType: keyboardType,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        border: InputBorder.none,
        fillColor: const Color(0xfff3B324E),
        filled: true,
        prefixIcon: Icon(
          icon,
          size: 28,
          color: Colors.grey,
        ),
        label: TextThin(text: text, horizontal: 0),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xff14DAE2),
            ),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
