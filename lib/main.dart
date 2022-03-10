import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsukimon/views/splash_screen.dart';
import 'package:tsukimon/widgets/bottomnav.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: const Color(0xff0028CC)),
      ),
      home: const BottomNavScreen(),
    );
  }
}
