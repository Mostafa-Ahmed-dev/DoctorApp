import 'package:doctor/core/Constants.dart';
import 'package:doctor/core/widgets/CustomContanier.dart';
import 'package:doctor/core/widgets/CustomElavatedButton.dart';
import 'package:doctor/core/widgets/CustomSpace.dart';
import 'package:doctor/core/widgets/CustomTexk.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../AppoinmentPage/AppoinmentPage.dart';
import 'CustomComsContanier.dart';

class CardBaseBody extends StatelessWidget {
  const CardBaseBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hero(
          tag: 'doctor',
          child: CustomContanier(
            vlaueOfhieght: 0.35,
            valueOfwidth: 1,
            color: KprimaryColor,
            widget: Image(
              image: AssetImage('assets/images/Serena_Gome.png'),
            ),
          ),
        ),
        CustomVerticalSpace(value: 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomComContanier(
              ontap: () {},
              text: 'Voice Call',
              iconData: Icons.call,
              color: Colors.lightBlue,
            ),
            CustomComContanier(
              ontap: () {},
              text: 'Video Call',
              iconData: Icons.video_call,
              color: Colors.deepPurple,
            ),
            CustomComContanier(
              ontap: () {},
              text: 'Message',
              iconData: Icons.message,
              color: Colors.orange,
            ),
          ],
        ),
        CustomVerticalSpace(value: 0.02),
        Padding(
          padding:
              EdgeInsets.only(left: SizeConfigwidth().init(context) * 0.03),
          child: CustomText(
            text: 'Mediicine & Heart Spelist',
            color: Colors.black,
            fontsize: 16,
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: SizeConfigwidth().init(context) * 0.03),
          child: CustomText(
            text: 'Good Health Clinic, MBBS, FCPS',
            color: Colors.black.withOpacity(0.8),
            fontsize: 16,
          ),
        ),
        CustomVerticalSpace(value: 0.04),
        Padding(
          padding:
              EdgeInsets.only(left: SizeConfigwidth().init(context) * 0.03),
          child: CustomText(
            lpadding: SizeConfigwidth().init(context) * 0.03,
            text: 'About Serena',
            color: Colors.black,
            fontsize: 16,
          ),
        ),
        CustomVerticalSpace(value: 0.02),
        Padding(
          padding:
              EdgeInsets.only(left: SizeConfigwidth().init(context) * 0.03),
          child: CustomText(
            text: 'Lorem Ipsum is simply dummy text of the printing and',
            color: Colors.black.withOpacity(0.8),
            fontsize: 14,
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: SizeConfigwidth().init(context) * 0.03),
          child: CustomText(
            text: 'tupesetting industry. Lorem Ipsum has been the',
            color: Colors.black.withOpacity(0.8),
            fontsize: 14,
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: SizeConfigwidth().init(context) * 0.03),
          child: CustomText(
            text: 'industry is standard dummy text ever since the the 1500s',
            color: Colors.black.withOpacity(0.8),
            fontsize: 14,
          ),
        ),
        CustomVerticalSpace(value: 0.04),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText(
                text: 'Patients',
                color: Colors.black.withOpacity(0.7),
                fontsize: 16),
            CustomText(
                text: 'Experience',
                color: Colors.black.withOpacity(0.7),
                fontsize: 16),
            CustomText(
                text: 'Reviews',
                color: Colors.black.withOpacity(0.7),
                fontsize: 16),
          ],
        ),
        CustomVerticalSpace(value: 0.001),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText(text: '1.08K', color: Colors.black, fontsize: 20),
            CustomText(text: '8 Yearss', color: Colors.black, fontsize: 20),
            CustomText(text: '2.05K', color: Colors.black, fontsize: 20),
          ],
        ),
        CustomVerticalSpace(value: 0.03),
        Padding(
          padding:
              EdgeInsets.only(left: SizeConfigwidth().init(context) * 0.044),
          child: CustomElvetedButton(
            ontap: () {
              Navigator.pushNamed(context, AppoinmentPage.id);
            },
            text: 'Book an Appoinment',
            color: Colors.white,
            fontsize: 20,
            buttoncolor: Colors.blue,
            onPriymaryColor: Colors.white,
            borderradius: BorderRadius.circular(5),
          ),
        )
      ],
    );
  }
}
