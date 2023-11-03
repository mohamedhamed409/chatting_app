import 'package:flutter/material.dart';
import 'package:chat/components/custom_button.dart';
import 'package:chat/components/custom_text_field.dart';
import 'package:chat/screens/register_screen.dart';

import '../constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/scholar.png',
              height: 100,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Scholar Chat',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Row(
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const CustomTextField(
              labelText: 'Email',
            ),
            const SizedBox(
              height: 10.0,
            ),
            const CustomTextField(
              labelText: 'Password',
            ),
            const SizedBox(
              height: 20.0,
            ),
            const CustomButton(buttonName: ' SIGN IN'),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                const Text(
                  'don\'t have an account ?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.id);
                  },
                  child: const Text(
                    'Register Now',
                    style: TextStyle(
                      color: Color(0xffc3eaea),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 75,
            ),
          ],
        ),
      ),
    );
  }
}
