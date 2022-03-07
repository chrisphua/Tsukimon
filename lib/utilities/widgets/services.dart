import 'package:flutter/material.dart';
import 'package:tsukimon/utilities/constant.dart';
import 'package:tsukimon/utilities/widgets/booking_services.dart';
import 'package:tsukimon/utilities/widgets/headings.dart';

class Servies extends StatelessWidget {
  const Servies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        MyHeadings(text: 'Services',),
        SizedBox(
          height: 10,
        ),
        BookingServices(
          text: '  Laundry',
          assetSrc: 'assets/images/a.svg',
        ),
        BookingServices(
          text: 'Domestic chores',
          assetSrc: 'assets/images/b.svg',
        ),
        BookingServices(
          text: 'Confinement meals',
          assetSrc: 'assets/images/c.svg',
        ),
        BookingServices(
          text: 'Confinement bath',
          assetSrc: 'assets/images/d.svg',
        ),
        BookingServices(
          text: 'Guidance and advice',
          assetSrc: 'assets/images/e.svg',
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}


