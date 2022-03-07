import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:tsukimon/utilities/constant.dart';
import 'package:tsukimon/utilities/widgets/mytextfield.dart';
import 'package:tsukimon/utilities/widgets/roundButton.dart';
import 'package:tsukimon/views/booking_summary.dart';

class ConfinementNannyScreen extends StatefulWidget {
  const ConfinementNannyScreen({Key? key}) : super(key: key);

  @override
  State<ConfinementNannyScreen> createState() => _ConfinementNannyScreenState();
}

class _ConfinementNannyScreenState extends State<ConfinementNannyScreen> {
  List<String> _locations = ['A', 'B', 'C', 'D'];
  String? _selectedLocation;

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
        title: Text('Confinement Nanny',
            style: Theme.of(context).textTheme.bodyText2),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Booking Dates',
                            style: TextStyle(
                                color: kprimaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const BookingSummaryScreen());
                            },
                            child: const Text(
                              'skip for now',
                              style: TextStyle(
                                  color: kbuttonColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const MyTextField(
                        label: 'Start date',
                        hintText: '12/07/2022',
                        prefixIcon: Icon(
                          Icons.calendar_today,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Personality Match',
                            style: kbodyText1.copyWith(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            height: 48,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: ktextfieldColor)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                iconDisabledColor: Colors.black,
                                iconEnabledColor: Colors.black,
                                hint: Text(
                                  'Select country',
                                  style: kbodyText1.copyWith(
                                      fontWeight: FontWeight.w400),
                                ),
                                value: _selectedLocation,
                                items: _locations.map((location) {
                                  return DropdownMenuItem(
                                    child: Text(location),
                                    value: location,
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedLocation = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 3),
                            child: Text(
                              'Personality Match',
                              style: kbodyText1.copyWith(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            height: 48,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: ktextfieldColor)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                iconDisabledColor: Colors.black,
                                iconEnabledColor: Colors.black,
                                hint: Text(
                                  'Select filters',
                                  style: kbodyText1.copyWith(
                                      fontWeight: FontWeight.w400),
                                ),
                                value: _selectedLocation,
                                items: _locations.map((location) {
                                  return DropdownMenuItem(
                                    child: Text(location),
                                    value: location,
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedLocation = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 3),
                            child: Text(
                              'Confinement days',
                              style: kbodyText1.copyWith(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 3),
                            child: Text(
                              'Max 28 days',
                              style: kbodyText1.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: ktextfieldColor),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            height: 48,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: ktextfieldColor)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                iconDisabledColor: Colors.black,
                                iconEnabledColor: Colors.black,
                                hint: Text(
                                  '28 days',
                                  style: kbodyText1.copyWith(
                                      fontWeight: FontWeight.w400),
                                ),
                                value: _selectedLocation,
                                items: _locations.map((location) {
                                  return DropdownMenuItem(
                                    child: Text(location),
                                    value: location,
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedLocation = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      RoundButton(
                          text: 'Search', bgColor: kbuttonColor, press: () {}),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Recommended for you',
                  style: kbodyText1.copyWith(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                GridView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.7,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        padding: EdgeInsets.all(10),
                        margin: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/images/Pictures.png'))),
                        height: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Shangri-La',
                              style: kbodyText2.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.normal),
                            ),
                            Text(
                              'Confinement stsacation',
                              style: kbodyText2.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
