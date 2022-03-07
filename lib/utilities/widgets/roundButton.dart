import 'package:flutter/material.dart';
import 'package:tsukimon/utilities/constant.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,@required this.text,@required this.bgColor,@required this.press, this.textColor
    
  }) : super(key: key);

  final String? text;
  final Color? bgColor,textColor;
  final Function()? press;

  

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: press,
      child: Container(
          alignment: Alignment.center,
          width: screenWidth,
          height: 60,
          child:  Text(
            text!,
            style: kbodyText2
          ),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(35),
          ),
        ),
    );
  }
}