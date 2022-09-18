import 'package:doctor/core/Constants.dart';
import 'package:doctor/core/widgets/CustomContanier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../../core/widgets/CustomCard.dart';
import '../../../../../../core/widgets/CustomSpace.dart';
import '../../../../../../core/widgets/CustomTexk.dart';

class CardOfView extends StatelessWidget {
  CardOfView(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.text5,
      required this.image})
      : super(key: key);
  ////////////////////
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String image;
///////////////////
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: KContanierColor,
      elevation: 2,
      vlaueOfhieght: 0.32,
      valueOfwidth: 0.9,
      widget: Padding(
        padding: EdgeInsets.only(
            left: SizeConfigwidth().init(context) * 0.03,
            top: SizeConfighieght().init(context) * 0.01),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: text1, color: Colors.white, fontsize: 19),
                CustomText(text: text2, color: Colors.white, fontsize: 19),
                CustomVerticalSpace(value: 0.04),
                CustomText(text: text3, color: Colors.white, fontsize: 19),
                CustomText(text: text4, color: Colors.white, fontsize: 19),
                CustomText(text: text5, color: Colors.white, fontsize: 19),
              ],
            ),
            CustomContanier(
                vlaueOfhieght: 0.3,
                valueOfwidth: 0.3,
                color: Colors.transparent,
                widget: Image(image: AssetImage(image)))
          ],
        ),
      ),
    );
  }
}
