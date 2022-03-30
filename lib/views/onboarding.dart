import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tsukimon/controllers/authController.dart';
import 'package:tsukimon/utilities/constant.dart';
import 'package:tsukimon/utilities/widgets/mytextfield.dart';
import 'package:tsukimon/utilities/widgets/roundButton.dart';
import 'package:tsukimon/views/login.dart';
import 'package:tsukimon/views/register_one.dart';
import 'package:tsukimon/widgets/bottomnav.dart';
import 'package:tsukimon/widgets/progressHUD.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Get.offAll(() => const BottomNavScreen());
                  },
                  child: Text(
                    'Skip for now',
                    style: kbodyText2.copyWith(color: kbuttonColor),
                  ),
                ),
              ),
              Flexible(child: Container()),
              Image.asset(
                'assets/images/Group 1.png',
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'TSUKIMON',
                style: TextStyle(
                    color: Color.fromRGBO(76, 23, 142, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Text('Easiest way to get nanny login to get started',
                    textAlign: TextAlign.center, style: kheadline3),
              ),
              const SizedBox(
                height: 20,
              ),
              RoundButton(
                  text: 'Login',
                  bgColor: kprimaryColor,
                  press: () {
                    Get.to(() => const LoginScreen());
                  }),
              const SizedBox(
                height: 15,
              ),
              RoundButton(text: 'Sign up', bgColor: kbuttonColor, press: () {
                 Get.to(() => const RegisterOne());
              }),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Expanded(
                      child: Divider(
                    height: 3,
                    color: Colors.grey,
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'or continue with',
                    style: kheadline3,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Divider(
                      height: 2,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Flexible(child: Container()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset('assets/images/Apple.svg'),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            isApiCallProcess = true;
                          });
                          AuthController auth = AuthController();
                          auth.signInWithFacebook();
                          setState(() {
                            isApiCallProcess = false;
                          });
                        },
                        child: SvgPicture.asset('assets/images/Facebook.svg')
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isApiCallProcess = true;
                        });
                        AuthController auth = AuthController();
                        auth.signInWithGoogle();
                        setState(() {
                          isApiCallProcess = false;
                        });
                      },
                        child: SvgPicture.asset('assets/images/Google.svg')
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(child: Container()),
              Text(
                'By signing up you’re agreeing to our Privacy Policy and Terms of Service',
                textAlign: TextAlign.center,
                style: kheadline3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
