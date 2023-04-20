import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/Resources/auth_methods.dart';
import 'package:instagram_clone/Utils/Colors.dart';
import 'package:instagram_clone/Utils/utils.dart';
import 'package:instagram_clone/Widgets/Text_field_inputs.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  Uint8List? _image;

  void selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    setState(() {
      _image = im;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
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

              /// Circular widget to accept and show our selected file
              Stack(
                children: [
                  _image != null
                      ? CircleAvatar(
                          radius: 64,
                          backgroundImage: MemoryImage(_image!),
                        )
                      : CircleAvatar(
                          radius: 64,
                          backgroundImage: NetworkImage(
                              'https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg'),
                        ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      onPressed: selectImage,
                      icon: const Icon(Icons.add_a_photo),
                    ),
                  ),
                ],
              ),

              /// Spacing
              const SizedBox(height: 24),

              /// text field input for Username
              TextFieldInput(
                textEditingController: _usernameController,
                textInputType: TextInputType.text,
                hinText: "Enter your Username",
              ),

              /// spacing
              const SizedBox(height: 24),

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

              /// text field input for Bio
              TextFieldInput(
                textEditingController: _bioController,
                textInputType: TextInputType.text,
                hinText: "Enter your Bio",
              ),

              /// spacing
              const SizedBox(height: 24),

              /// button for login
              InkWell(
                onTap: () async {
                  String res = await AuthMethods().signUpUser(
                    email: _emailController.text,
                    password: _passwordController.text,
                    username: _usernameController.text,
                    bio: _bioController.text, file: _image!,
                  );
                  print(res);
                },
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
                    child: const Text("Have an account? "),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(loginScreen());
                    },
                    child: Container(
                      child: const Text(
                        "Login up.",
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
