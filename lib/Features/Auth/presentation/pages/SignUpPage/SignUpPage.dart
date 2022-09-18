import 'package:doctor/Features/Auth/presentation/pages/SignUpPage/widgets/SignUpBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  static String id = 'SignUp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpBody(),
    );
  }
}
