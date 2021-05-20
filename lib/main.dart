import 'package:allinone/Jobtitle.dart';
import 'package:allinone/Screens/CreateJob.dart';
import 'package:allinone/Screens/ForgetPassword.dart';
import 'package:allinone/Screens/Homepage.dart';
import 'package:allinone/Screens/JobApply.dart';
import 'package:allinone/Screens/JobDetails.dart';
import 'package:allinone/Screens/Login.dart';
import 'package:allinone/Screens/Mainpage.dart';
import 'package:allinone/Screens/Payment.dart';
import 'package:allinone/Screens/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
