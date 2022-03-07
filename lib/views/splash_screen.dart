import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsukimon/utilities/constant.dart';
import 'package:tsukimon/views/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // timer is for splashscreen display time before navigating
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => const OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Image.asset(
                'assets/images/Group 1.png',
              ), 
              const SizedBox(
                height: 15,
              ),
              const Text(
                'TSUKIMON',
                style: TextStyle(
                    color: Color.fromRGBO(76, 23, 142, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 48),
              ),
              Text(
                'Created to care for you',              
                style: kbodyText1.copyWith(
                  color: const Color.fromRGBO(76, 23, 142, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
