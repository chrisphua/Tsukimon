import 'package:flutter/material.dart';

class ProgressHUD extends StatelessWidget {

  final Widget? child;
  final bool? inAsyncCall;
  final double? opacity;
  final Color? color;
  final Animation<Color>? valueColor;

  const ProgressHUD({
    Key? key,
    @required this.child,
    @required this.inAsyncCall,
    this.opacity = 0.3,
    this.color = const Color(0xffFAFF00),
    this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = <Widget>[];
    widgetList.add(child!);
    if (inAsyncCall!) {
      final modal = Stack(
        children: [
          Opacity(
            opacity: opacity!,
            child: ModalBarrier(dismissible: false, color: color,),
          ),
          const Center(
            child: CircularProgressIndicator(color: Color(0xffFAFF00),),
          ),
        ],
      );
      widgetList.add(modal);
    }
    return Stack(
      children: widgetList,
    );
  }
}
