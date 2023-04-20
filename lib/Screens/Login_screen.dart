import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/Utils/Colors.dart';
import 'package:instagram_clone/Widgets/Text_field_inputs.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Sign_up_Screen.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          // color: Colors.cyanAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Spacing
              Flexible(
                child: Container(),
                flex: 1,
              ),

              /// Svg image
              SvgPicture.asset(
                'Assets/ic_instagram.svg',
                color: primaryColor,
                height: 64,
              ),

              /// Spacing
              const SizedBox(height: 64),

              /// text field input for email
              TextFieldInput(
                textEditingController: _emailController,
                textInputType: TextInputType.emailAddress,
                hinText: "Enter your Email",
              ),

              /// spacing
              const SizedBox(height: 24),

              /// text field input for password
              TextFieldInput(
                textEditingController: _passwordController,
                textInputType: TextInputType.text,
                hinText: "Enter your Password",
                isPassed: true,
              ),

              /// spacing
              const SizedBox(height: 24),

              /// button for login
              InkWell(
                onTap: () {},
                child: Container(
                  child: const Text('Log In'),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    color: blueColor,
                  ),
                ),
              ),

              /// spacing
              const SizedBox(height: 12),

              /// Spacing
              Flexible(
                child: Container(),
                flex: 1,
              ),

              /// Transitioning to sign-up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text("Don't have an account? "),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(SignupScreen());
                    },
                    child: Container(
                      child: const Text(
                        "Sign up.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
