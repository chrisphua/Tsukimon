import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsukimon/views/confinenmentNannyPage.dart';
import 'package:tsukimon/views/splash_screen.dart';
import 'package:tsukimon/widgets/bottomnav.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home: const SplashScreen(),
    );
  }
}
