import 'package:doctor/Features/Base/Presentation/pages/AppoinmentPage/widgets/AppoinmentBody.dart';
import 'package:doctor/core/widgets/CustomIcon.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../core/Constants.dart';
import '../../../../../core/widgets/CustomTexk.dart';

class AppoinmentPage extends StatelessWidget {
  const AppoinmentPage({
    Key? key,
  }) : super(key: key);
  static String id = 'AppoinmentPage';

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
          size: 22,
        ),
        title:
            CustomText(text: 'Appointment', color: Colors.black, fontsize: 22),
      ),
      body: AppoinmentBody(),
    );
  }
}
