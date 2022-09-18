import 'package:doctor/Features/Auth/data/Auth_repositryimplement.dart';
import 'package:doctor/Features/Base/Presentation/pages/FirstBase/FirstBase.dart';
import 'package:doctor/core/widgets/CustomElavatedButton.dart';
import 'package:doctor/core/widgets/CustomSpace.dart';
import 'package:doctor/core/widgets/CustomTexk.dart';
import 'package:doctor/core/widgets/CustomTextField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:page_transition/page_transition.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class SignInBody extends StatelessWidget {
  SignInBody({Key? key}) : super(key: key);
  String email = '';
  String password = '';
  GlobalKey<FormState> formkey = GlobalKey();
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: isloading,
        child: Padding(
          padding: EdgeInsets.only(
              left: SizeConfighieght().init(context) * 0.02,
              right: SizeConfighieght().init(context) * 0.02,
              top: SizeConfighieght().init(context) * 0.02),
          child: Form(
            key: formkey,
            child: ListView(
              children: [
                CustomText(
                  text: 'Sign In',
                  color: Colors.black,
                  fontsize: 40,
                  fontWeight: FontWeight.bold,
                ),
                CustomVerticalSpace(value: 0.03),
                Row(
                  children: [
                    CustomText(
                        text: 'Dont have an account?',
                        color: Colors.black,
                        fontsize: 18),
                    CustomText(
                        text: ' Sign Up!', color: Colors.blue, fontsize: 18),
                  ],
                ),
                CustomVerticalSpace(value: 0.05),
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
                  hint: 'password',
                  borderRadius: BorderRadius.circular(8),
                  enabledcolor: Colors.lightBlue,
                  focusedcolor: Colors.green,
                ),
                CustomVerticalSpace(value: 0.03),
                CustomElvetedButton(
                  ontap: () async {
                    if (formkey.currentState!.validate()) {
                      await signinall(context);
                    }
                  },
                  text: 'Sign In',
                  color: Colors.white,
                  fontsize: 20,
                  buttoncolor: Colors.blue,
                  onPriymaryColor: Colors.white,
                  borderradius: BorderRadius.circular(8),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> signinall(BuildContext context) async {
    isloading = true;
    try {
      await Signin();
      showTopSnackBar(
          context, const CustomSnackBar.success(message: 'success'));
      Navigator.push(
        context,
        PageTransition(child: FirstBase(), type: PageTransitionType.fade),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showTopSnackBar(
            context,
            displayDuration: Duration(milliseconds: 300),
            const CustomSnackBar.error(message: 'user-not-found'));
      } else if (e.code == 'wrong-password') {
        showTopSnackBar(
            context, const CustomSnackBar.error(message: 'wrong-password'));
      }
    } catch (e) {
      showTopSnackBar(context, CustomSnackBar.error(message: e.toString()));
    }
    isloading = false;
  }

  Future<void> Signin() async {
    await AuthRepositryImpl().SignInWithEandP(email: email, password: password);
  }
}
