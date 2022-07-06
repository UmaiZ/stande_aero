import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:stande_aero/screens/auth/mainlogin.dart';
import 'package:stande_aero/screens/lease%20Form/lease_form.dart';
import 'package:stande_aero/screens/lease%20Form/lease_form2.dart';
import 'package:stande_aero/screens/mainhome.dart';
import 'package:stande_aero/screens/payment/payment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    start();
    super.initState();
  }

  start() {
    Timer(Duration(seconds: 3), () => Get.to(() => MainScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/slicing/Untitled-1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(child: Image.asset('assets/slicing/Untitled-2.png')),
      ),
    );
  }
}
