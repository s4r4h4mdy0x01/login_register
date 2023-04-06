import 'package:flutter/material.dart';


class MyButton extends StatefulWidget {
   MyButton({super.key, required this.text,required this.onpressed});
 String text;
  void Function() onpressed;

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 50,
        width: 160,
        decoration: BoxDecoration(
          color: Color(0xff14DAE2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: MaterialButton(
          onPressed: widget.onpressed,
          child:  Text(
            widget.text,
            style:  const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
