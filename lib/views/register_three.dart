import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsukimon/controllers/authController.dart';
import 'package:tsukimon/utilities/constant.dart';
import 'package:tsukimon/utilities/widgets/mytextfield.dart';
import 'package:tsukimon/utilities/widgets/roundButton.dart';
import 'package:tsukimon/views/nanny_profile.dart';
import 'package:tsukimon/widgets/bottomnav.dart';
import 'package:tsukimon/widgets/progressHUD.dart';

class RegisterThree extends StatefulWidget {
  final String? address;
  final String? city;
  final String? state;
  final String? zip;
  final String? phone;
  final String? fname;
  final String? lname;
  final DateTime? dob;
  final String? country;
  const RegisterThree({
    Key? key,
    @required this.fname,
    @required this.lname,
    @required this.dob,
    @required this.country,
    @required this.address,
    @required this.city,
    @required this.state,
    @required this.zip,
    @required this.phone
  }) : super(key: key);

  @override
  State<RegisterThree> createState() => _RegisterThreeState();
}

class _RegisterThreeState extends State<RegisterThree> {
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();

  bool isApiCallProcess = false;

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      child: _uiSetup(context),
      inAsyncCall: isApiCallProcess,
      opacity: 0.3,
    );
  }

  Widget _uiSetup(BuildContext context) {
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
              Text(
                'Email Address',
                style: kbodyText1.copyWith(fontWeight: FontWeight.w400,fontSize: 14, color: const Color(0xff101010)),
              ),
              const SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                  hintText: 'e.g you@gmail.com',
                  filled: true,
                  fillColor: const Color(0xffB4B4B4).withOpacity(0.08),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Color(0xffB4B4B4),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:   BorderSide(
                      color: const Color(0xffB4B4B4).withOpacity(0.08),
                      width: 1,
                    ),
                  ),
                ),
                controller: emailController,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Password',
                style: kbodyText1.copyWith(fontWeight: FontWeight.w400,fontSize: 14, color: const Color(0xff101010)),
              ),
              const SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                  hintText: 'password',
                  filled: true,
                  fillColor: const Color(0xffB4B4B4).withOpacity(0.08),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Color(0xffB4B4B4),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:   BorderSide(
                      color: const Color(0xffB4B4B4).withOpacity(0.08),
                      width: 1,
                    ),
                  ),
                ),
                controller: passwordController,
              ),
              const SizedBox(
                height: 20,
              ),
              RoundButton(text: 'Sign up', bgColor: kbuttonColor, press: () {
                setState(() {
                  isApiCallProcess = true;
                });
                AuthController auth = AuthController();
                auth.createUser(
                    emailController!.text,
                    passwordController!.text,
                    widget.fname!,
                    widget.lname!,
                    widget.country!,
                    widget.dob!,
                    widget.address!,
                    widget.city!,
                    widget.state!,
                    widget.zip!,
                    widget.phone!
                );
                setState(() {
                  isApiCallProcess = false;
                });
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
