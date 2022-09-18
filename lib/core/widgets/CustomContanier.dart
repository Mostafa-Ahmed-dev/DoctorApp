import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomContanier extends StatelessWidget {
  CustomContanier(
      {Key? key,
      required this.vlaueOfhieght,
      required this.valueOfwidth,
      required this.color,
      required this.widget})
      : super(key: key);
  //
  final double vlaueOfhieght;
  final double valueOfwidth;
  final Color color;
  final Widget widget;
  @override

  //
  Widget build(BuildContext context) {
    double hieght = MediaQuery.of(context).size.height * vlaueOfhieght;
    double width = MediaQuery.of(context).size.width * valueOfwidth;
    return Container(
      height: hieght,
      width: width,
      color: color,
      child: widget,
    );
  }
}
