import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsukimon/utilities/constant.dart';

class CenterServices extends StatelessWidget {
  const CenterServices({
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 15),
          width: 180,
          height: 150,
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/Rectangle 12 (1).png',
                ),
              )
            /* boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 5,
                    color: Colors.grey.withOpacity(0.2))
              ] */),
        ),
        Column(
          children: [
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shangri-La',
                    style: kbodyText1.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000)),
                  ),
                  Text(
                    'Confinement staycation',
                    style: kbodyText1.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                        color: const Color(0xff000000)
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    r'$2000',
                    style: kbodyText1.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                        color: const Color(0xff000000)
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
