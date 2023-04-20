import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:instagram_clone/Responsive/responsive_layout_screen.dart';
import 'package:instagram_clone/Screens/Login_screen.dart';
import 'package:instagram_clone/Screens/Sign_up_Screen.dart';
import 'package:instagram_clone/Utils/Colors.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:instagram_clone/from aanadi/experiment/Responsive_layout.dart';
import 'package:instagram_clone/from aanadi/experiment/mobile_layout.dart';
import 'package:instagram_clone/from aanadi/experiment/web_Layout.dart';

import 'Responsive/mobile_screen_layout.dart';
import 'Responsive/web_screen_layout.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyAVOs69Q2Lr6Lyt68ferO6jXnhEVujQmHE',
          appId: '1:792008977535:web:707b8bcb5975f50bba234a',
          messagingSenderId: '792008977535',
          projectId: 'personal-project-varshini',
          storageBucket: 'personal-project-varshini.appspot.com',
      ),
    );
  }else{
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBacgroundColor,
      ),
    //   home: ResponsiveLayout(
    //       webScreenLayout: WebScreenLayout(),
    //       mobileScreenLayout: MobileScreenLayout(),
    // ),
    //   home: responsivelayout(mobileLayout: mobileLayout(), webLayout: webLayout()),
      home: loginScreen(),
    );
  }
}
