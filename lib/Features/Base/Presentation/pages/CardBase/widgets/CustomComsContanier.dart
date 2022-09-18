import 'package:doctor/core/widgets/CustomCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../../core/widgets/CustomContanier.dart';
import '../../../../../../core/widgets/CustomTexk.dart';

class CustomComContanier extends StatelessWidget {
  CustomComContanier(
      {Key? key,
      required this.color,
      required this.iconData,
      required this.text,
      required this.ontap})
      : super(key: key);
  final Color color;
  final String text;
  final IconData iconData;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: CustomCard(
          color: color,
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                iconData,
                color: Colors.white,
              ),
              CustomText(text: text, color: Colors.white, fontsize: 15),
            ],
          ),
          elevation: 1,
          valueOfwidth: 0.3,
          vlaueOfhieght: 0.08),
    );
  }
}
