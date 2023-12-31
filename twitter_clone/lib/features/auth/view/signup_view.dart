import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/constants/ui_constants.dart';

import '../../../common/common.dart';
import '../../../theme/pallete.dart';
import '../widgets/auth_field.dart';
import 'login_view.dart';

class SignUpView extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const SignUpView());
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final appbar = UIConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                //textfield 1
                AuthField(
                  controller: emailController,
                  hintText: 'Email Address',
                ),
                const SizedBox(height: 25),
                //textfiel 2
                AuthField(
                  controller: passwordController,
                  hintText: 'Password',
                ),
                const SizedBox(
                  height: 40,
                ),
                //button
                Align(
                  alignment: Alignment.topRight,
                  child: RoundedSmallButton(
                    onTap: () {},
                    label: "Done",
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                RichText(
                    text: TextSpan(
                        text: "Already have an account?",
                        style: const TextStyle(fontSize: 16),
                        children: [
                      TextSpan(
                          text: " Login",
                          style: const TextStyle(
                              color: Pallete.blueColor, fontSize: 16),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(context, LoginView.route());
                            })
                    ]))
                //textspan
              ],
            ),
          ),
        ),
      ),
    );
  }
}
