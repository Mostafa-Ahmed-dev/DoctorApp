import 'package:doctor/Features/Base/Presentation/pages/AppoinmentPage/widgets/CusotmCalender.dart';
import 'package:doctor/core/widgets/CustomCard.dart';
import 'package:doctor/core/widgets/CustomContanier.dart';
import 'package:doctor/core/widgets/CustomElavatedButton.dart';
import 'package:doctor/core/widgets/CustomSpace.dart';
import 'package:doctor/core/widgets/CustomTexk.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppoinmentBody extends StatelessWidget {
  const AppoinmentBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomVerticalSpace(value: 0.02),
          CustomText(text: 'Jul', color: Colors.black, fontsize: 20),
          CustomVerticalSpace(value: 0.001),
          CustomContanier(
            color: Colors.transparent,
            valueOfwidth: 1,
            vlaueOfhieght: 0.2,
            widget: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CustomCalender(
                  firsttext: '13',
                  secondtext: ' Tue',
                  ontap: () {},
                ),
                CustomCalender(
                  firsttext: '14',
                  secondtext: 'Wen',
                  ontap: () {},
                ),
                CustomCalender(
                  firsttext: '15',
                  secondtext: ' The',
                  ontap: () {},
                ),
                CustomCalender(
                  firsttext: '16',
                  secondtext: 'Fri',
                  ontap: () {},
                ),
                CustomCalender(
                  firsttext: '17',
                  secondtext: ' Sat',
                  ontap: () {},
                ),
                CustomCalender(
                  firsttext: '18',
                  secondtext: 'Sun',
                  ontap: () {},
                ),
                CustomCalender(
                  firsttext: '19',
                  secondtext: ' Mon',
                  ontap: () {},
                ),
              ],
            ),
          ),
          CustomVerticalSpace(value: 0.01),
          CustomText(text: 'Slots', color: Colors.black, fontsize: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomCard(
                  color: Colors.white,
                  widget: Center(
                      child: CustomText(
                          text: '10:10 am', color: Colors.black, fontsize: 18)),
                  elevation: 0.2,
                  valueOfwidth: 0.3,
                  vlaueOfhieght: 0.07),
              CustomCard(
                  color: Colors.white,
                  widget: Center(
                      child: CustomText(
                          text: '10:30 am', color: Colors.black, fontsize: 18)),
                  elevation: 0.2,
                  valueOfwidth: 0.3,
                  vlaueOfhieght: 0.07),
              CustomCard(
                  color: Colors.white,
                  widget: Center(
                      child: CustomText(
                          text: '10:50 am', color: Colors.black, fontsize: 18)),
                  elevation: 0.2,
                  valueOfwidth: 0.3,
                  vlaueOfhieght: 0.07),
            ],
          ),
          CustomVerticalSpace(value: 0.05),
          Padding(
            padding:
                EdgeInsets.only(left: SizeConfigwidth().init(context) * 0.02),
            child: CustomElvetedButton(
                ontap: () {},
                text: 'Book',
                color: Colors.white,
                fontsize: 20,
                buttoncolor: Colors.blue,
                onPriymaryColor: Colors.white,
                borderradius: BorderRadius.circular(8)),
          )
        ],
      ),
    );
  }
}
