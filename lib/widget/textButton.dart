import 'package:flutter/material.dart';

class ButtonText extends StatefulWidget {
  ButtonText({super.key, required this.text, required this.onpressed});
  String text;
  void Function() onpressed;

  @override
  State<ButtonText> createState() => _ButtonTextState();
}

class _ButtonTextState extends State<ButtonText> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onpressed,
      child: Text(
        widget.text,
        style: const TextStyle(
          color: Color(0xff14DAE2),
          fontSize: 15,
        ),
      ),
    );
  }
}
