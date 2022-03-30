import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsukimon/utilities/constant.dart';
import 'package:tsukimon/utilities/widgets/mytextfield.dart';
import 'package:tsukimon/utilities/widgets/roundButton.dart';
import 'package:tsukimon/views/register_two.dart';

class RegisterOne extends StatefulWidget {
  const RegisterOne({Key? key}) : super(key: key);

  @override
  State<RegisterOne> createState() => _RegisterOneState();
}

class _RegisterOneState extends State<RegisterOne> {
  final TextEditingController fnameController = TextEditingController();
  final TextEditingController lnameController = TextEditingController();
  String? countryPicked;

  DateTime? dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xff202327), size: 15,),
        ),
        title: const Text('Create account',
            style: TextStyle(
              color: Color(0xff101010),
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
            )
            ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 220,
                  child: Text('Complete the Sign up process to get started',
                      textAlign: TextAlign.center, style: kheadline3),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'First name',
                      style: kbodyText1.copyWith(fontWeight: FontWeight.w400,fontSize: 14, color: const Color(0xff101010)),
                    ),
                    const SizedBox(height: 5,),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                        hintText: 'e.g John',
                        filled: true,
                        fillColor: const Color(0xffB4B4B4).withOpacity(0.08),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Color(0xffB4B4B4),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:   BorderSide(
                            color: const Color(0xffB4B4B4).withOpacity(0.08),
                            width: 1,
                          ),
                        ),
                      ),
                      controller: fnameController,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Last name',
                      style: kbodyText1.copyWith(fontWeight: FontWeight.w400,fontSize: 14, color: const Color(0xff101010)),
                    ),
                    const SizedBox(height: 5,),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                        hintText: 'e.g doe',
                        filled: true,
                        fillColor: const Color(0xffB4B4B4).withOpacity(0.08),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Color(0xffB4B4B4),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:   BorderSide(
                            color: const Color(0xffB4B4B4).withOpacity(0.08),
                            width: 1,
                          ),
                        ),
                      ),
                      controller: lnameController,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Date',
                      style: kbodyText1.copyWith(fontWeight: FontWeight.w400,fontSize: 14, color: const Color(0xff101010)),
                    ),
                    const SizedBox(height: 5,),
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: ktextfieldColor)),
                      child: TextFormField(
                        onTap: () {
                          showDatePicker(
                              context: context,
                              initialDate: dateTime == null ? DateTime.now() : dateTime!,
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2050)
                          ).then((date) {
                            setState(() {
                              dateTime = date;
                            });
                          });
                        },
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: dateTime == null ? 'dd/mm/yyyy' : '${dateTime!.day}/${dateTime!.month}/${dateTime!.year}',
                          hintStyle: GoogleFonts.roboto(
                              color: const Color(0xffB4B4B4)
                          ),
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
                    Text(
                      'Country',
                      style: kbodyText1.copyWith(
                          fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: ktextfieldColor.withOpacity(0.08),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: ktextfieldColor)),
                      child: CountryPickerDropdown(
                        hint: const Text('Country'),
                        isExpanded: true,
                        initialValue: 'US',
                        itemBuilder: _buildDropdownItem,
                        onValuePicked: (Country country) {
                          countryPicked = country.name;
                          if (kDebugMode) {
                            print(countryPicked);
                          }
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                RoundButton(
                    text: 'Next',
                    bgColor: kbuttonColor,
                    press: () {
                      Get.to(() => RegisterTwo(
                        fname: fnameController.text,
                        lname: lnameController.text,
                        dob: dateTime!,
                        country: countryPicked,));
                    }),
                const SizedBox(
                  height: 20,
                ),
                Flexible(child: Container())
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownItem(Country country) => SizedBox(
    child: Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        const SizedBox(
          width: 8.0,
        ),
        Text(country.name),
      ],
    ),
  );
}
