import 'package:flutter/material.dart';
import 'package:login_register/widget/button.dart';
import 'package:login_register/widget/textButton.dart';
import 'package:login_register/widget/text_bold.dart';
import 'package:login_register/widget/text_form.dart';
import 'package:login_register/widget/text_thin.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff251F34),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextBold(text: 'Create Account'),
                const SizedBox(
                  height: 8.0,
                ),
                TextThin(
                    text: 'Please fill the input below here ', horizontal: 0),
                const SizedBox(
                  height: 30.0,
                ),
                MyTextForm(
                    obscureText: false,
                    keyboardType: TextInputType.name,
                    icon: Icons.person_2_outlined,
                    text: 'Name'),
                const SizedBox(
                  height: 10.0,
                ),
                MyTextForm(
                    obscureText: false,
                    keyboardType: TextInputType.phone,
                    icon: Icons.phone,
                    text: 'Phone'),
                const SizedBox(
                  height: 10.0,
                ),
                MyTextForm(
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    icon: Icons.mail_outline,
                    text: 'Email'),
                const SizedBox(
                  height: 10.0,
                ),
                MyTextForm(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    icon: Icons.lock_outline,
                    text: 'Password'),
                const SizedBox(
                  height: 10.0,
                ),
                MyTextForm(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    icon: Icons.lock_outline,
                    text: ' Conform Password'),
                const SizedBox(
                  height: 20.0,
                ),
                MyButton(text: 'SIGN UP', onpressed: () {}),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextThin(text: "Already have a account?", horizontal: 0),
                    ButtonText(
                        text: 'Sign in',
                        onpressed: () {
                          Navigator.of(context).pop(true);
                        }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
