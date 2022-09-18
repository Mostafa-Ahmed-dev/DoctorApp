import 'package:doctor/Features/Auth/presentation/pages/SignUpPage/SignUpPage.dart';
import 'package:doctor/Features/Base/Presentation/pages/CardBase/CardBase.dart';
import 'package:doctor/Features/Base/Presentation/pages/FirstBase/widgets/CardOfCategory.dart';
import 'package:doctor/Features/Base/Presentation/pages/FirstBase/widgets/CardOfDoctor.dart';
import 'package:doctor/Features/Base/Presentation/pages/FirstBase/widgets/CardOfView.dart';
import 'package:doctor/core/Constants.dart';
import 'package:doctor/core/widgets/CustomCard.dart';
import 'package:doctor/core/widgets/CustomContanier.dart';
import 'package:doctor/core/widgets/CustomIcon.dart';
import 'package:doctor/core/widgets/CustomSpace.dart';
import 'package:doctor/core/widgets/CustomTexk.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:page_transition/page_transition.dart';

class FirstBaseBody extends StatelessWidget {
  const FirstBaseBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double hieght = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: SizeConfighieght().init(context) * 0.01,
          right: SizeConfighieght().init(context) * 0.02,
          top: SizeConfigwidth().init(context) * 0.016,
          bottom: SizeConfigwidth().init(context) * 0.01,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Find Your',
              color: Colors.black,
              fontsize: 22,
            ),
            Row(
              children: [
                CustomText(
                  text: 'Specialist',
                  color: Colors.black,
                  fontsize: 26,
                  fontWeight: FontWeight.bold,
                ),
                CustomHorizontalSpace(value: 0.45),
                CustomIcon(
                  ontap: () {},
                  iconData: Icons.search,
                  size: 30,
                ),
                CustomHorizontalSpace(value: 0.04),
                CustomIcon(
                  ontap: () {},
                  iconData: Icons.message_rounded,
                  size: 30,
                ),
              ],
            ),
            CustomVerticalSpace(value: 0.01),
            //////////////////////////////////// Card Of View
            CustomContanier(
              vlaueOfhieght: 0.25,
              valueOfwidth: 1,
              color: Colors.transparent,
              widget: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardOfView(
                    text1: 'Looking For Your Desire',
                    text2: 'Specialist Doctor',
                    text3: 'Dr.Kiran Shakia ',
                    text4: 'Medicine & Heart Spelist',
                    text5: 'Good Health Clinic',
                    image: 'assets/images/Dr. Kiran Shakia.png',
                  ),
                  CardOfView(
                    text1: 'Looking For Your Desire',
                    text2: 'Specialist Doctor',
                    text3: 'Dr.Asma Khan',
                    text4: 'Medicine & Heart Spelist',
                    text5: 'Good Health Clinic',
                    image: 'assets/images/Asma_Khan.png',
                  ),
                ],
              ),
            ),

            ///////////////////////////////
            CustomVerticalSpace(value: 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Categories',
                  color: Colors.black.withOpacity(0.6),
                  fontsize: 20,
                ),
                CustomText(
                  text: 'See All',
                  color: Colors.black.withOpacity(0.6),
                  fontsize: 20,
                ),
              ],
            ),
            CustomVerticalSpace(value: 0.01),
            ////////////////////////////////////  card of categoryy
            CustomContanier(
              vlaueOfhieght: 0.18,
              valueOfwidth: 1,
              color: Colors.transparent,
              widget: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardOfCategory(
                      image: 'assets/icons/pediatrician-45.png',
                      text: 'Pediatrician'),
                  CustomHorizontalSpace(value: 0.02),
                  CardOfCategory(
                      image: 'assets/icons/neurologist 50.png',
                      text: 'Neurologist'),
                  CustomHorizontalSpace(value: 0.02),
                  CardOfCategory(
                      image: 'assets/icons/cardiologist.png',
                      text: 'cardiologist'),
                  CustomHorizontalSpace(value: 0.02),
                  CardOfCategory(
                      image: 'assets/icons/Surgeon.png', text: 'Surgeon'),
                ],
              ),
            ),
            //////////////////////////////////////
            CustomVerticalSpace(value: 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Available Doctor',
                  color: Colors.black.withOpacity(0.6),
                  fontsize: 20,
                ),
                CustomText(
                  text: 'See All',
                  color: Colors.black.withOpacity(0.6),
                  fontsize: 20,
                ),
              ],
            ),
            CustomVerticalSpace(value: 0.01),
            //////////////////////////// Card Of Doctor
            CustomContanier(
              vlaueOfhieght: 0.247,
              valueOfwidth: 1,
              color: Colors.transparent,
              widget: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Hero(
                    tag: 'doctor',
                    child: CardOfDoctor(
                      ontap: () {
                        Navigator.pushNamed(context, CardBase1.id);
                      },
                      doctorname: 'Dr.Serna Gome',
                      doctorjop: 'Medicine Specialist',
                      numofexprience: '8 Years',
                      numofpatients: '1.08K',
                      image: 'assets/images/Serena_Gome.png',
                    ),
                  ),
                  CardOfDoctor(
                    ontap: () {
                      Navigator.pushNamed(context, CardBase1.id);
                    },
                    doctorname: 'Dr.Asma Khan',
                    doctorjop: 'Medicine Specialist',
                    numofexprience: '5 Years',
                    numofpatients: '2.7K',
                    image: 'assets/images/Asma_Khan.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
