import 'package:flutter/material.dart';
import 'package:tsukimon/utilities/constant.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    this.label,
    this.hintText,
    this.controller,
    this.focusNode, this.prefixIcon,
  }) : super(key: key);

  final String? label, hintText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label!,
          style: kbodyText1.copyWith(fontWeight: FontWeight.w400,fontSize: 14, color: const Color(0xff101010)),
        ),
        const SizedBox(height: 5,),
        TextFormField(
          focusNode: focusNode,
          decoration: InputDecoration(
            prefixIcon:prefixIcon,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
            hintText: hintText,
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
        )
      ],
    );
  }
}
