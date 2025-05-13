import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/profilepage.dart';
import 'package:flutter_application_1/pages/signup.dart';
import 'package:flutter_application_1/pages/about_us.dart';
import 'package:flutter_application_1/pages/support.dart';
import 'package:flutter_application_1/pages/termsofuse.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/homepage',
      routes: {
        "/homepage": (context) => Home(),
        "/about_us": (context) => const About_us(),
        "/login": (context) => const Login(),
        "/signup": (context) => const Signup(),
        "/profilepage": (context) => Profile(),
        "/support": (context) => Support(),
        "/termsofuse": (context) => TermsOfUse(),
      },
    );
  }
}