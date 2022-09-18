import 'package:doctor/core/widgets/CustomTexk.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomElvetedButton extends StatelessWidget {
  CustomElvetedButton(
      {Key? key,
      required this.ontap,
      required this.text,
      required this.color,
      required this.fontsize,
      @required this.fontWeight,
      @required this.fontfamily,
      required this.buttoncolor,
      @required this.onPriymaryColor,
      @required this.borderradius})
      : super(key: key);

  //
  VoidCallback? ontap;
  final String text;
  final String? fontfamily;
  final Color color;
  final double fontsize;
  final FontWeight? fontWeight;
  final Color buttoncolor;
  final Color? onPriymaryColor;
  final BorderRadiusGeometry?
      borderradius; // ف البوردر ريدس لازم ااكد عليه انها مش هتبقي ب نل
  @override

  //
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
          primary: buttoncolor,
          onPrimary: onPriymaryColor,
          fixedSize: Size(width * 0.9, height * 0.065),
          shape: RoundedRectangleBorder(
            borderRadius: borderradius!,
          )),
      child: CustomText(
          text: text,
          color: color,
          fontsize: fontsize,
          fontWeight: fontWeight,
          fontfamily: fontfamily),
    );
  }
}
