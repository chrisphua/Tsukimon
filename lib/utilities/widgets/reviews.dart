import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsukimon/utilities/constant.dart';

class Reviews extends StatelessWidget {
  const Reviews({
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
            3,
            (index) => const ReviewContainer(),
          ),
        ],
      ),
    );
  }
}

class ReviewContainer extends StatelessWidget {
  const ReviewContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    double Screenwidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(10),
      width: Screenwidth * 0.60,
      height: 170,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(250, 250, 250, 1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: kgreyColor.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 24,
                backgroundColor: Colors.black,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Isaac Quaseda',
                    style: kbodyText1.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    '3 weeks ago',
                    style: kheadline3.copyWith(fontWeight: FontWeight.w300),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Text(
              'Mama Chew took care of my baby and me like we were her family, made me feel the warmth of a mothers love',
              style: kheadline3,
            ),
          )
        ],
      ),
    );
  }
}
