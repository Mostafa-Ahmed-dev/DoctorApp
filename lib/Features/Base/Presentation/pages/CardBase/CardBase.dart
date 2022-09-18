import 'package:doctor/Features/Base/Presentation/pages/CardBase/widgets/CardBaseBody.dart';
import 'package:doctor/core/Constants.dart';
import 'package:doctor/core/widgets/CustomIcon.dart';
import 'package:doctor/core/widgets/CustomTexk.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardBase1 extends StatelessWidget {
  const CardBase1({Key? key}) : super(key: key);
  static String id = 'CardBase1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: CustomIcon(
            ontap: () {
              Navigator.pop(context);
            },
            iconData: Icons.arrow_back_ios,
            size: 22),
        title: CustomText(
            text: 'Dr.Serena Gome', color: Colors.black, fontsize: 22),
      ),
      body: CardBaseBody(),
    );
  }
}
