import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:phone_book/Screens/Auth/loginPage.dart';

import 'package:phone_book/appConstants.dart';
import 'package:page_transition/page_transition.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: customSwatch,


        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Column(
          children: [
            Image.asset("assets/images/oil_logo.png",
              fit: BoxFit.fill,
            width: 200,
            height: 200,),

          ],
        ),
splashIconSize: 200,
        nextScreen: const LoginPage(),
        splashTransition: SplashTransition.sizeTransition,
        pageTransitionType: PageTransitionType.rightToLeft,
        backgroundColor: simGreenColor,
        animationDuration: const Duration(seconds: 2),
      ),
    );
  }
}

