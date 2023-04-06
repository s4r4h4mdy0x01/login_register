import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_register/screens/register.dart';
import 'package:login_register/widget/button.dart';
import 'package:login_register/widget/textButton.dart';
import 'package:login_register/widget/text_bold.dart';
import 'package:login_register/widget/text_form.dart';
import 'package:login_register/widget/text_thin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff251F34),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: SvgPicture.asset('image/login.svg'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextBold(text: 'Login'),
                TextThin(
                    text: 'Please fill the input below here ', horizontal: 40),
                const SizedBox(
                  height: 20,
                ),
                MyTextForm(
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    icon: Icons.email_outlined,
                    text: 'Email'),
                const SizedBox(
                  height: 15,
                ),
                MyTextForm(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    icon: Icons.lock_outline,
                    text: 'Password'),
                const SizedBox(
                  height: 25,
                ),
                MyButton(text: 'LOGIN', onpressed: () {}),
                Center(
                    child:
                        ButtonText(text: 'Forgot Password?', onpressed: () {})),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextThin(text: "Don't have an account?", horizontal: 0),
                    ButtonText(
                        text: 'Sign up',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Register(),
                              ));
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
