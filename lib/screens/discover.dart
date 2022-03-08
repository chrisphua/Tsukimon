import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsukimon/helpers/notifications/notification.dart';
import 'package:tsukimon/utilities/widgets/centers.dart';
import 'package:tsukimon/utilities/widgets/relevantServices.dart';
import 'package:tsukimon/views/confinentNanny.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffFAFAFA),
        elevation: 0,
        title: const Text(
          'Tsukimon',
          style: TextStyle(
            fontSize: 24.0,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 15, 15, 15),
          ),
        ),
        leading: const ImageIcon(
          AssetImage('assets/images/Group 14.png'),
          color: Color.fromARGB(255, 15, 15, 15),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(() => const NotificationPageScreen());
            },
            child: const ImageIcon(
              AssetImage('assets/images/Notification.png'),
              color: Color(0xff101010),
              size: 15,
            ),
          ),
          const SizedBox(width: 20,)
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: const Color(0xffDADADA)),
                    color: const Color(0xffFAFAFA),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: const [
                        ImageIcon(AssetImage("assets/images/Search.png"), color: Color(0xff6A6A6A),),
                        SizedBox(width: 10,),
                        Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            color: Color(0xff6A6A6A),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const ConfinementNannyScreen());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: const Color(0xffCCD6FF),
                                  borderRadius: BorderRadius.circular(60),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/img_confinement_nanny (9).png',
                                    ),),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                'Confinement',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              ),
                              const Text(
                                'Nanny',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: const Color(0xffCCD6FF),
                                  borderRadius: BorderRadius.circular(60),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/img_confinement_nanny (10).png',
                                    ),),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                'Baby Care',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              ),
                              const Text(
                                'Training',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: const Color(0xffCCD6FF),
                                  borderRadius: BorderRadius.circular(60),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/img_confinement_nanny (11).png',
                                    ),),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                'Message',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: const Color(0xffCCD6FF),
                                  borderRadius: BorderRadius.circular(60),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/img_confinement_nanny (12).png',
                                    ),),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                'Confinement',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              ),
                              const Text(
                                'Centers',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const ConfinementNannyScreen());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: const Color(0xffCCD6FF),
                                  borderRadius: BorderRadius.circular(60),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/img_confinement_nanny (7).png',
                                    ),),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                'Lactation',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              ),
                              const Text(
                                'Specilist',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: const Color(0xffCCD6FF),
                                  borderRadius: BorderRadius.circular(60),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/img_confinement_nanny (8).png',
                                    ),),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                'Herbs',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: const Color(0xffCCD6FF),
                                  borderRadius: BorderRadius.circular(60),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/img_confinement_nanny (13).png',
                                    ),),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                'Confinement',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              ),
                              const Text(
                                'Fods',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: const Color(0xffE5E5E5),
                                  borderRadius: BorderRadius.circular(60),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/Group 62.png',
                                    ),),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                'More',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Confinement Nanny',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff849CFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Padding(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: RelevantServices(),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Centres',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff849CFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Padding(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: CenterServices(),
                  ),
                ],
              ),
              const SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
