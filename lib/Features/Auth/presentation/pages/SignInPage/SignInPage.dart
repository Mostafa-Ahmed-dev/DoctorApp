import 'package:doctor/Features/Auth/presentation/pages/SignInPage/widgets/SIgnInBodyPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  static String id = 'SignIn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInBody(),
    );
  }
}
