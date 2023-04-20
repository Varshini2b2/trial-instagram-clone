import 'package:instagram_clone/from aanadi/experiment/mobile_layout.dart';
import 'package:instagram_clone/from aanadi/experiment/web_Layout.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/from aanadi/experiment/Responsive_layout.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: responsivelayout(
          mobileLayout: mobileLayout(),
          webLayout: webLayout(),
    ),
    );
  }
}
