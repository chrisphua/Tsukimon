import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsukimon/utilities/constant.dart';
import 'package:tsukimon/utilities/widgets/mytextfield.dart';
import 'package:tsukimon/utilities/widgets/roundButton.dart';
import 'package:tsukimon/views/nanny_profile.dart';
import 'package:tsukimon/widgets/bottomnav.dart';

class RegisterThree extends StatefulWidget {
  const RegisterThree({Key? key}) : super(key: key);

  @override
  State<RegisterThree> createState() => _RegisterThreeState();
}

class _RegisterThreeState extends State<RegisterThree> {
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xff202327), size: 15,),
        ),
        title: const Text('Create account',
            style: TextStyle(
              color: Color(0xff101010),
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
            )
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 220,
                child: Text('Complete the Sign up process to get started',
                    textAlign: TextAlign.center, style: kheadline3),
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                label: 'Email Address',
                hintText: 'e.g you@gmail.com',
                controller: emailController,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                label: 'Password',
                hintText: 'password',
                controller: passwordController,
              ),
              const SizedBox(
                height: 20,
              ),
              RoundButton(text: 'Sign up', bgColor: kbuttonColor, press: () {Get.offAll(() => const BottomNavScreen());}),
              const SizedBox(
                height: 20,
              ),
              Flexible(child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
