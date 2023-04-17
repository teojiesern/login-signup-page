import 'package:flutter/material.dart';
import 'package:black_catus/pages/loading.dart';
import 'package:black_catus/pages/login.dart';
import 'package:black_catus/pages/signup.dart';
import 'package:black_catus/pages/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/splash",
    routes: {
      "/": (context) => Loading(),
      "/splash": (context) => SplashScreen(),
      "/login": (context) => Login(),
      "/signup": (context) => Signup()
    },
  ));
}
