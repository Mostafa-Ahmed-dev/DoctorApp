import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    Key? key,
    required this.text,
    required this.color,
    required this.fontsize,
    @required this.fontWeight,
    @required this.fontfamily,
    @required this.lpadding,
  }) : super(key: key);
  //
  final String text;
  final String? fontfamily;
  final Color color;
  final double fontsize;
  final FontWeight? fontWeight;
  final double? lpadding;
  @override
  //
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: fontsize,
          fontWeight: fontWeight,
          fontFamily: fontfamily),
    );
  }
}
