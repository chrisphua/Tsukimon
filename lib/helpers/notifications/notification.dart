import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationPageScreen extends StatelessWidget {
  const NotificationPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffFAFAFA),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 15,
            color: Color(0xff202327),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 32.0,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  color: Color(0xff101010),
                ),
              ),
              SizedBox(height: 30,),
              Center(
                child: Text(
                  'You are all caught up',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6A6A6A),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
