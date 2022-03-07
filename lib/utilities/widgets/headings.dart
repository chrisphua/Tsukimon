import 'package:flutter/material.dart';
import 'package:tsukimon/utilities/constant.dart';

class MyHeadings extends StatelessWidget {
  const MyHeadings({
    Key? key, this.text,
  }) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: kheadline3.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
    );
  }
}