import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  List<String> _locations = ['A', 'B', 'C', 'D'];
  String? _selectedLocation;

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
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
              MyTextField(
                label: 'First name',
                hintText: 'e.g John',
                controller: emailController,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                label: 'Last name',
                hintText: 'e.g doe',
                controller: passwordController,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                label: 'Date of birth',
                hintText: 'dd/mm/yyy',
                controller: passwordController,
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
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        iconDisabledColor: Colors.black,
                        iconEnabledColor: Colors.black,
                        hint: Text(
                          'Country',
                          style:
                              kheadline3.copyWith(fontWeight: FontWeight.w500),
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
                height: 20,
              ),
              RoundButton(
                  text: 'Next',
                  bgColor: kbuttonColor,
                  press: () {
                    Get.to(() => const RegisterTwo());
                  }),
              const SizedBox(
                height: 20,
              ),
              Flexible(child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
