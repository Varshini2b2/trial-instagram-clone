import 'package:flutter/material.dart';
import 'package:instagram_clone/Utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout({Key? key, required this.webScreenLayout, required this.mobileScreenLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints) {
          if(constraints.maxWidth > webScreenSize){
            return webScreenLayout;// web screen layout
          } else{
            return mobileScreenLayout;// mobile screen layout
          }
        },
    );
  }
}
