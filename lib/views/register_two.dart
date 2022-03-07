import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsukimon/utilities/constant.dart';
import 'package:tsukimon/utilities/widgets/mytextfield.dart';
import 'package:tsukimon/utilities/widgets/roundButton.dart';
import 'package:tsukimon/views/register_three.dart';

class RegisterTwo extends StatefulWidget {
  const RegisterTwo({Key? key}) : super(key: key);

  @override
  State<RegisterTwo> createState() => _RegisterTwoState();
}

class _RegisterTwoState extends State<RegisterTwo> {
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
                height: 25,
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
                label: 'Address',
                hintText: 'Street and house number',
                controller: emailController,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                label: 'City',
                hintText: 'e.g New york',
                controller: passwordController,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                label: 'State',
                hintText: 'state',
                controller: passwordController,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                label: 'Zip code',
                hintText: 'e.g 30021',
                controller: passwordController,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                label: 'Phone number',
                hintText: 'phone number',
                controller: passwordController,
              ),
              const SizedBox(
                height: 20,
              ),
              RoundButton(
                  text: 'Next',
                  bgColor: kbuttonColor,
                  press: () {
                    Get.to(() => const RegisterThree());
                  }),
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
