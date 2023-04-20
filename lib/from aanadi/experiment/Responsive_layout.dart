import 'package:flutter/material.dart';

class responsivelayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget webLayout;

  const responsivelayout(
      {Key? key, required this.mobileLayout, required this.webLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth < 650){
            return mobileLayout;
          }else{
            return webLayout;
          }
        }
    );
  }
}
