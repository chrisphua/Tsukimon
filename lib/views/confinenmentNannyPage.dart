import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tsukimon/utilities/constant.dart';
import 'package:tsukimon/views/nanny_profile.dart';

class ConfinementNannyPageScreen extends StatelessWidget {
  final DateTime? dateTime;
  const ConfinementNannyPageScreen({Key? key, this.dateTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Column(
          children: [
            const Text('Confinement Nanny',
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            color: Color(0xff101010),
          ),
            ),
            dateTime != null ? Text(
              '${dateTime!.day}/${dateTime!.month}/${dateTime!.year}',
              style: const TextStyle(
                fontSize: 12.0,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                color: Color(0xff5273FF),
              ),
            ) : Text(
              '${dateTime!.day}/${dateTime!.month}/${dateTime!.year}',
              style: const TextStyle(
                fontSize: 12.0,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                color: Color(0xff5273FF),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const NannyProfile());
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          width: MediaQuery.of(context).size.width /3,
                          height: 220,
                          decoration: BoxDecoration(
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(15),
                            /* boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 5,
                      color: Colors.grey.withOpacity(0.2))
                ] */),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 120,
                                decoration:  const BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight:Radius.circular(15) ),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'assets/images/Pictures.png',
                                      ),
                                    )),
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/images/Star 1.svg',
                                              height: 10,
                                              width: 10,
                                            ),
                                            Text(
                                              '4.7',
                                              style: kbodyText1.copyWith(
                                                  color: const Color(0xffFFB74B)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Container(
                                          width: 2,
                                          color: ktextfieldColor,
                                          height: 17,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text('6 Hires', style: kheadline3.copyWith(fontSize: 12,)),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Amy Chew, 33',
                                      style: kbodyText1.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      r'$2000',
                                      style: kbodyText1.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const NannyProfile());
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          width: MediaQuery.of(context).size.width /3,
                          height: 220,
                          decoration: BoxDecoration(
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(15),
                            /* boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 5,
                      color: Colors.grey.withOpacity(0.2))
                ] */),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 120,
                                decoration:  const BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight:Radius.circular(15) ),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'assets/images/Rectangle 11 (1).png',
                                      ),
                                    )),
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/images/Star 1.svg',
                                              height: 10,
                                              width: 10,
                                            ),
                                            Text(
                                              '4.7',
                                              style: kbodyText1.copyWith(
                                                  color: const Color(0xffFFB74B)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Container(
                                          width: 2,
                                          color: ktextfieldColor,
                                          height: 17,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text('6 Hires', style: kheadline3.copyWith(fontSize: 12,)),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Amy Chew, 33',
                                      style: kbodyText1.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      r'$2000',
                                      style: kbodyText1.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const NannyProfile());
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          width: MediaQuery.of(context).size.width /3,
                          height: 220,
                          decoration: BoxDecoration(
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(15),
                            /* boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 5,
                      color: Colors.grey.withOpacity(0.2))
                ] */),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 120,
                                decoration:  const BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight:Radius.circular(15) ),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'assets/images/unsplash_-ByDh99Sfww (2).png',
                                      ),
                                    )),
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/images/Star 1.svg',
                                              height: 10,
                                              width: 10,
                                            ),
                                            Text(
                                              '4.7',
                                              style: kbodyText1.copyWith(
                                                  color: const Color(0xffFFB74B)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Container(
                                          width: 2,
                                          color: ktextfieldColor,
                                          height: 17,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text('6 Hires', style: kheadline3.copyWith(fontSize: 12,)),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Amy Chew, 33',
                                      style: kbodyText1.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      r'$2000',
                                      style: kbodyText1.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const NannyProfile());
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          width: MediaQuery.of(context).size.width /3,
                          height: 220,
                          decoration: BoxDecoration(
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(15),
                            /* boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 5,
                      color: Colors.grey.withOpacity(0.2))
                ] */),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 120,
                                decoration:  const BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight:Radius.circular(15) ),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'assets/images/unsplash_n1B6ftPB5Eg (1).png',
                                      ),
                                    )),
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/images/Star 1.svg',
                                              height: 10,
                                              width: 10,
                                            ),
                                            Text(
                                              '4.7',
                                              style: kbodyText1.copyWith(
                                                  color: const Color(0xffFFB74B)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Container(
                                          width: 2,
                                          color: ktextfieldColor,
                                          height: 17,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text('6 Hires', style: kheadline3.copyWith(fontSize: 12,)),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Amy Chew, 33',
                                      style: kbodyText1.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      r'$2000',
                                      style: kbodyText1.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
