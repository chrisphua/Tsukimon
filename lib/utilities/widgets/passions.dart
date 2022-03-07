import 'package:flutter/material.dart';
import 'package:tsukimon/utilities/constant.dart';

class Passions extends StatelessWidget {
  const Passions({
    Key? key,
    this.text,
  }) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      height: 40,
      child: Text(
        text!,
        style: kbodyText1.copyWith(fontSize: 14, fontWeight: FontWeight.w400,
        color: const Color.fromRGBO(41, 41, 41, 1),),
      ),
      decoration: BoxDecoration(
        //color: Colors.red,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color.fromRGBO(41, 41, 41, 1),
          width: 1,
        ),
      ),
    );
  }
}