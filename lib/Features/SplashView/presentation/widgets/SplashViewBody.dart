import 'package:doctor/Features/Auth/presentation/pages/SignInPage/SignInPage.dart';
import 'package:doctor/Features/Auth/presentation/pages/SignUpPage/SignUpPage.dart';
import 'package:doctor/core/widgets/CustomElavatedButton.dart';
import 'package:doctor/core/widgets/CustomSpace.dart';
import 'package:doctor/core/widgets/CustomTexk.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/splashview.jpg'),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.4)
          ], begin: Alignment.bottomRight, end: Alignment.topLeft),
        ),
        child: Column(
          children: [
            CustomVerticalSpace(value: 0.5),
            CustomText(
              text: 'Daktarne',
              color: Colors.white,
              fontsize: 40,
              fontWeight: FontWeight.bold,
              //   fontfamily: 'Pacifico',
            ),
            CustomVerticalSpace(value: 0.23),
            CustomElvetedButton(
              ontap: () {
                Navigator.pushNamed(context, SignInPage.id);
              },
              text: 'Sign In',
              color: Colors.white,
              fontsize: 20,
              buttoncolor: Color(0xFF70d9d1),
              onPriymaryColor: Colors.black,
              borderradius: BorderRadius.circular(8),
            ),
            CustomVerticalSpace(value: 0.02),
            CustomElvetedButton(
              ontap: () {
                Navigator.pushNamed(context, SignUpPage.id);
              },
              text: 'Sign Up',
              color: Colors.white,
              fontsize: 20,
              buttoncolor: Colors.transparent.withOpacity(0.2),
              onPriymaryColor: Colors.black,
              borderradius: BorderRadius.circular(8),
            ),
          ],
        ),
      ),
    );
  }
}
