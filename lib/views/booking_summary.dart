import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tsukimon/utilities/constant.dart';
import 'package:tsukimon/utilities/widgets/services.dart';

class BookingSummaryScreen extends StatelessWidget {
  const BookingSummaryScreen({Key? key}) : super(key: key);

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
        title: Text('Booking Summary',
            style: Theme.of(context).textTheme.bodyText2),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding:
            const EdgeInsets.only(left: 25.0, right: 25, top: 25, bottom: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 385,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child:
                              SvgPicture.asset('assets/images/My PROFILE.svg'),
                          radius: 24,
                          backgroundColor: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Amy Chew',
                              style: kbodyText1.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '33 years old',
                              style: kbodyText1
                                ..copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(41, 41, 41, 1)),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      '28 days confinement',
                      style: kbodyText1,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Start date:',
                              style: kheadline3,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text('End date: ', style: kheadline3)
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Text(
                              'Wednesday, 1 June 2022',
                              style: kbodyText1.copyWith(
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Wednesday, 1 June 2022',
                              style: kbodyText1.copyWith(
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      color: ktextfieldColor,
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Servies(),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                alignment: Alignment.center,
                height: 88,
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Services',
                          style: kheadline3.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              color: kbuttonColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'No additional services',
                      style: kheadline3,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                alignment: Alignment.center,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 5),
                          blurRadius: 3,
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Price',
                      style: kheadline3.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      r'$2000',
                      style: kbodyText1.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(41, 41, 41, 1),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 60,
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text('Book Nanny', style: kbodyText2),
                  decoration: BoxDecoration(
                    color: kbuttonColor,
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
