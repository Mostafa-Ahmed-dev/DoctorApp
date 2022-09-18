import 'dart:math';

import 'package:doctor/Features/Auth/data/Auth_repositryimplement.dart';
import 'package:doctor/Features/Auth/presentation/pages/SignInPage/SignInPage.dart';
import 'package:doctor/core/widgets/CustomElavatedButton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../../../../core/widgets/CustomSpace.dart';
import '../../../../../../core/widgets/CustomTexk.dart';
import '../../../../../../core/widgets/CustomTextField.dart';

class SignUpBody extends StatelessWidget {
  SignUpBody({Key? key}) : super(key: key);
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
            top: SizeConfighieght().init(context) * 0.02,
            left: SizeConfigwidth().init(context) * 0.04,
            right: SizeConfigwidth().init(context) * 0.04),
        child: ListView(
          children: [
            CustomText(
              text: 'Sign Up',
              color: Colors.black,
              fontsize: 40,
              fontWeight: FontWeight.bold,
            ),
            CustomVerticalSpace(value: 0.03),
            Row(
              children: [
                CustomText(
                    text: 'Already have an account?',
                    color: Colors.black,
                    fontsize: 18),
                CustomText(text: ' Sign In!', color: Colors.blue, fontsize: 18),
              ],
            ),
            CustomVerticalSpace(value: 0.05),
            CustomTextField(
              hint: 'Username',
              borderRadius: BorderRadius.circular(8),
              enabledcolor: Colors.lightBlue,
              focusedcolor: Colors.green,
            ),
            CustomVerticalSpace(value: 0.02),
            CustomTextField(
              hint: 'phone Number',
              borderRadius: BorderRadius.circular(8),
              enabledcolor: Colors.lightBlue,
              focusedcolor: Colors.green,
            ),
            CustomVerticalSpace(value: 0.02),
            CustomTextField(
              onchanged: (data) {
                email = data;
              },
              hint: 'Email',
              borderRadius: BorderRadius.circular(8),
              enabledcolor: Colors.lightBlue,
              focusedcolor: Colors.green,
            ),
            CustomVerticalSpace(value: 0.02),
            CustomTextField(
              onchanged: (data) {
                password = data;
              },
              hint: 'Password',
              borderRadius: BorderRadius.circular(8),
              enabledcolor: Colors.lightBlue,
              focusedcolor: Colors.green,
            ),
            CustomVerticalSpace(value: 0.02),
            CustomTextField(
              hint: 'Confirm Password',
              borderRadius: BorderRadius.circular(8),
              enabledcolor: Colors.lightBlue,
              focusedcolor: Colors.green,
            ),
            CustomVerticalSpace(value: 0.04),
            CustomElvetedButton(
              ontap: () async {
                await signupall(context);
              },
              text: 'Sign Up',
              color: Colors.white,
              fontsize: 20,
              buttoncolor: Colors.blue,
              onPriymaryColor: Colors.white,
              borderradius: BorderRadius.circular(8),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> signupall(BuildContext context) async {
    try {
      await signup();
      showTopSnackBar(
        context,
        CustomSnackBar.success(message: 'email created'),
      );
      Navigator.push(context,
          PageTransition(child: SignInPage(), type: PageTransitionType.fade));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showTopSnackBar(
          context,
          CustomSnackBar.error(message: 'weak-password pls try again'),
        );
      } else if (e.code == 'email-already-in-use') {
        showTopSnackBar(
          context,
          CustomSnackBar.error(message: 'email-already-in-use'),
        );
      }
    } catch (e) {
      showTopSnackBar(context, CustomSnackBar.error(message: e.toString()));
    }
  }

  Future<void> signup() async {
    await AuthRepositryImpl().SignUpWithEandp(email: email, password: password);
  }
}
