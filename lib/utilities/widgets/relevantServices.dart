import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tsukimon/utilities/constant.dart';
import 'package:tsukimon/views/nanny_profile.dart';

class RelevantServices extends StatelessWidget {
  const RelevantServices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    double Screenwidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            5,
            (index) => const RelevantWidgets(),
          )
        ],
      ),
    );
  }
}

class RelevantWidgets extends StatelessWidget {
  const RelevantWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    double Screenwidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Get.to(() => const NannyProfile());
      },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            width: 150,
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
    );
  }
}
