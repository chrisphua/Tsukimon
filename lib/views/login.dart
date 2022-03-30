import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tsukimon/controllers/authController.dart';
import 'package:tsukimon/utilities/constant.dart';
import 'package:tsukimon/utilities/widgets/roundButton.dart';
import 'package:tsukimon/views/register_one.dart';
import 'package:tsukimon/widgets/bottomnav.dart';
import 'package:tsukimon/widgets/progressHUD.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xff202327), size: 15,),
        ),
        title: const Text('Login', style: TextStyle(
          color: Color(0xff101010),
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: 'Roboto',
        )),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: SizedBox(
                    width: 250,
                    child: Text(
                        'Hey welcome back, fill in your details to get back in',
                        textAlign: TextAlign.center,
                        style: kheadline3),
                  ),
                ),
                const SizedBox(
                  height: 80,
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
                  height: 20,
                ),
                Text(
                  'Password',
                  style: kbodyText1.copyWith(fontWeight: FontWeight.w400,fontSize: 14, color: const Color(0xff101010)),
                ),
                const SizedBox(height: 5,),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                    hintText: 'Password',
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
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text('Recover password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 90, 90, 1),
                        fontSize: 14,
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                RoundButton(
                    text: 'Login',
                    bgColor: kbuttonColor,
                    press: () {
                      setState(() {
                        isApiCallProcess = true;
                      });
                      AuthController auth = AuthController();
                      auth.login(emailController!.text, passwordController!.text.trim());
                      setState(() {
                        isApiCallProcess = false;
                      });
                }),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        height: 2,
                        color: Colors.grey,
                      ),
                    ),
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
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset('assets/images/Apple.svg'),
                      GestureDetector(onTap: () {
                        setState(() {
                          isApiCallProcess = true;
                        });
                        AuthController auth = AuthController();
                        auth.signInWithFacebook();
                        setState(() {
                          isApiCallProcess = false;
                        });
                      },
                          child: SvgPicture.asset('assets/images/Facebook.svg')),
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
                          child: SvgPicture.asset('assets/images/Google.svg')),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Get.to(() => const RegisterOne());
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account?',
                        style: kheadline3,
                        children: const <TextSpan>[
                          TextSpan(
                            text: ' Sign Up',
                            style: TextStyle(
                                color: Color.fromRGBO(82, 115, 255, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
