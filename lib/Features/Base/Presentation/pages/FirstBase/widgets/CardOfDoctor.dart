import 'dart:typed_data';

import 'package:doctor/core/widgets/CustomContanier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../../core/widgets/CustomCard.dart';
import '../../../../../../core/widgets/CustomSpace.dart';
import '../../../../../../core/widgets/CustomTexk.dart';

class CardOfDoctor extends StatelessWidget {
  CardOfDoctor(
      {Key? key,
      required this.doctorname,
      required this.doctorjop,
      required this.numofexprience,
      required this.numofpatients,
      @required this.namepage,
      @required this.ontap,
      required this.image})
      : super(key: key);

  ////////
  final String doctorname;
  final String doctorjop;
  final String numofexprience;
  final String numofpatients;
  final VoidCallback? ontap;
  final String? namepage;
  final String image;
///////////
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: CustomCard(
        color: Colors.white,
        elevation: 2,
        vlaueOfhieght: 0.32,
        valueOfwidth: 0.66,
        widget: Padding(
          padding:
              EdgeInsets.only(left: SizeConfigwidth().init(context) * 0.02),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomVerticalSpace(value: 0.02),
                  CustomText(
                    text: doctorname,
                    color: Colors.black,
                    fontsize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(text: doctorjop, color: Colors.grey, fontsize: 15),
                  CustomVerticalSpace(value: 0.03),
                  CustomText(
                      text: 'ExPrience', color: Colors.grey, fontsize: 15),
                  CustomText(
                      text: numofexprience, color: Colors.black, fontsize: 15),
                  CustomVerticalSpace(value: 0.02),
                  CustomText(
                      text: 'Patients', color: Colors.grey, fontsize: 15),
                  CustomText(
                      text: numofpatients, color: Colors.black, fontsize: 15),
                ],
              ),
              CustomContanier(
                valueOfwidth: 0.25,
                vlaueOfhieght: 0.25,
                color: Colors.transparent,
                widget: Image(
                  image: AssetImage(image),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
