import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../../core/widgets/CustomContanier.dart';
import '../../../../../../core/widgets/CustomTexk.dart';

class CustomCalender extends StatelessWidget {
  CustomCalender(
      {Key? key,
      required this.firsttext,
      required this.secondtext,
      required this.ontap})
      : super(key: key);
  final String firsttext;
  final String secondtext;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: CustomContanier(
        vlaueOfhieght: 0.14,
        valueOfwidth: 0.22,
        color: Colors.transparent,
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(text: firsttext, color: Colors.black, fontsize: 22),
            CustomText(text: secondtext, color: Colors.black, fontsize: 21),
          ],
        ),
      ),
    );
  }
}
