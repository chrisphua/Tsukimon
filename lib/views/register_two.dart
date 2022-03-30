import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsukimon/utilities/constant.dart';
import 'package:tsukimon/utilities/widgets/mytextfield.dart';
import 'package:tsukimon/utilities/widgets/roundButton.dart';
import 'package:tsukimon/views/register_three.dart';

class RegisterTwo extends StatefulWidget {
  final String? fname;
  final String? lname;
  final DateTime? dob;
  final String? country;
  const RegisterTwo({Key? key, @required this.fname, @required this.lname, @required this.dob, @required this.country}) : super(key: key);

  @override
  State<RegisterTwo> createState() => _RegisterTwoState();
}

class _RegisterTwoState extends State<RegisterTwo> {
  TextEditingController? addressController = TextEditingController();
  TextEditingController? cityController = TextEditingController();
  TextEditingController? stateController = TextEditingController();
  TextEditingController? zipController = TextEditingController();
  TextEditingController? phoneController = TextEditingController();

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                Text(
                  'Address',
                  style: kbodyText1.copyWith(fontWeight: FontWeight.w400,fontSize: 14, color: const Color(0xff101010)),
                ),
                const SizedBox(height: 5,),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                    hintText: 'Street and house number',
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
                  controller: addressController,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'City',
                  style: kbodyText1.copyWith(fontWeight: FontWeight.w400,fontSize: 14, color: const Color(0xff101010)),
                ),
                const SizedBox(height: 5,),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                    hintText: 'e.g New york',
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
                  controller: cityController,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'State',
                  style: kbodyText1.copyWith(fontWeight: FontWeight.w400,fontSize: 14, color: const Color(0xff101010)),
                ),
                const SizedBox(height: 5,),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                    hintText: 'state',
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
                  controller: stateController,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Zip code',
                  style: kbodyText1.copyWith(fontWeight: FontWeight.w400,fontSize: 14, color: const Color(0xff101010)),
                ),
                const SizedBox(height: 5,),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                    hintText: 'e.g 30021',
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
                  controller: zipController,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Phone number',
                  style: kbodyText1.copyWith(fontWeight: FontWeight.w400,fontSize: 14, color: const Color(0xff101010)),
                ),
                const SizedBox(height: 5,),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                    hintText: 'phone number',
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
                  controller: phoneController,
                ),
                const SizedBox(
                  height: 20,
                ),
                RoundButton(
                    text: 'Next',
                    bgColor: kbuttonColor,
                    press: () {
                      Get.to(() => RegisterThree(
                        fname: widget.fname,
                        lname: widget.lname,
                        dob: widget.dob,
                        country: widget.country,
                        address: addressController!.text,
                        city: cityController!.text,
                        state: stateController!.text,
                        zip: zipController!.text,
                        phone: phoneController!.text,
                      ));
                    }),
                const SizedBox(
                  height: 20,
                ),
                Flexible(child: Container())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
