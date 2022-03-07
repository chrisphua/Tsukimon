// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tsukimon/screens/inbox.dart';
import 'package:tsukimon/utilities/constant.dart';
import 'package:tsukimon/utilities/widgets/booking_services.dart';
import 'package:tsukimon/utilities/widgets/headings.dart';
import 'package:tsukimon/utilities/widgets/passions.dart';
import 'package:tsukimon/utilities/widgets/relevantServices.dart';
import 'package:tsukimon/utilities/widgets/reviews.dart';
import 'package:tsukimon/utilities/widgets/roundButton.dart';
import 'package:tsukimon/utilities/widgets/services.dart';
import 'package:tsukimon/utilities/widgets/tab_bar.dart';
import 'package:tsukimon/views/booking_summary.dart';
import 'package:tsukimon/views/confinentNanny.dart';

class NannyProfile extends StatefulWidget {
  const NannyProfile({Key? key}) : super(key: key);

  @override
  State<NannyProfile> createState() => _NannyProfileState();
}

class _NannyProfileState extends State<NannyProfile> {
  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    double Screenwidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: IconButton(
            color: Colors.black,
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Text('Nanny Profile',
              style: Theme.of(context).textTheme.bodyText2),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 450,
                  color: ktextfieldColor.withOpacity(0.2),
                  child: Stack(
                    children: [
                      SizedBox(
                        //color: Colors.red,
                        width: double.infinity,
                        height: 300,
                        child: Image.asset(
                          'assets/images/Pictures.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            height: 230,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      offset: const Offset(0, 5),
                                      blurRadius: 3,
                                      color: Colors.grey.withOpacity(0.2))
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //Flexible(child: Container(color: Colors.red,)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Amy Chew, 33',
                                      style: kbodyText1.copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.favorite_border),
                                    )
                                  ],
                                ),
                                Text(
                                  'No additional services',
                                  style: kheadline3.copyWith(fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/Star 1.svg',
                                      height: 15,
                                      width: 15,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text('5.0 review',
                                        style: kbodyText1.copyWith(
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  r'$2000',
                                  style: kbodyText1.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Divider(
                                  thickness: 1,
                                  color: ktextfieldColor,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '12',
                                          style: kbodyText1.copyWith(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Hires',
                                          style: kheadline3,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 35,
                                      width: 2,
                                      color: ktextfieldColor,
                                      //height: 25,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '8',
                                          style: kbodyText1.copyWith(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('Reviews', style: kheadline3),
                                      ],
                                    ),
                                    Container(
                                      height: 35,
                                      width: 2,
                                      color: ktextfieldColor,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '0',
                                          style: kbodyText1.copyWith(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('Cancellation', style: kheadline3),
                                      ],
                                    ),
                                  ],
                                ),
                                //Flexible(child: Container(color: Colors.red,)),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/Profile.svg',
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Female',
                            style: kheadline3,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/home.svg',
                            height: 16,
                            width: 16,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('Lives in saint city', style: kheadline3),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/Profile.svg',
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('Less than a mile away', style: kheadline3),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const MyHeadings(
                        text: 'About Me',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'I am a bilingual nanny with 6 years of experience. I enjoy caring for babies and communicating with new moms, seeing them healthy and well with my help makes me happy.',
                        style: kheadline3,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Servies(),
                      const MyHeadings(
                        text: 'Passion',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Passions(
                            text: 'Pet Friendly',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Passions(
                              text: 'Able to climb chairs',
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Passions(
                            text: 'Outdoors',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const MyHeadings(
                        text: 'Gallery',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const MyTabBar(),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Reviews',
                            style: kheadline3.copyWith(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Read all',
                            style: kheadline3.copyWith(color: kbuttonColor),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '5.O',
                            style: kbodyText1.copyWith(
                                fontSize: 32, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 2,
                            color: ktextfieldColor,
                            height: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  ...List.generate(
                                      5,
                                      (index) => SvgPicture.asset(
                                          'assets/images/Star 1.svg',
                                          height: 15,
                                          width: 15)),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  '8 Reviews',
                                  style: kbodyText1.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Reviews(),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Relevant Services',
                        style: kbodyText1.copyWith(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const RelevantServices(),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(10, 0),
                            spreadRadius: 5,
                            blurRadius: 8,
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  height: Screenheight * 0.1,
                  child: Row(
                    children: [
                      Expanded(
                          child: RoundButton(
                              text: 'Book',
                              bgColor: kbuttonColor,
                              press: () {
                                Get.to(() => const ConfinementNannyScreen());
                              })),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: RoundButton(
                              text: 'Message',
                              bgColor: kprimaryColor,
                              press: () {
                                Get.to(() => const InboxPageScreen());
                              })),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
