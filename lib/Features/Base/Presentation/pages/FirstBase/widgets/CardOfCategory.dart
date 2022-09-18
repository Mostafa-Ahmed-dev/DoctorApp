import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../../core/widgets/CustomCard.dart';
import '../../../../../../core/widgets/CustomSpace.dart';
import '../../../../../../core/widgets/CustomTexk.dart';

class CardOfCategory extends StatelessWidget {
  CardOfCategory({Key? key, required this.image, required this.text})
      : super(key: key);
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: Colors.white,
      elevation: 3,
      valueOfwidth: 0.33,
      vlaueOfhieght: 0.18,
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          CustomText(
              text: text, color: Colors.black.withOpacity(0.7), fontsize: 17),
        ],
      ),
    );
  }
}
