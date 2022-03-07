import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsukimon/utilities/constant.dart';

class BookingServices extends StatelessWidget {
  const BookingServices({
    Key? key,
    this.text,
    this.assetSrc,
  }) : super(key: key);

  final String? text, assetSrc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(assetSrc!,height: 20,width: 20,),
            const SizedBox(
              width: 15,
            ),
            Text(
              text!,
              style: kheadline3,
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
      ],
    );
  }
}
