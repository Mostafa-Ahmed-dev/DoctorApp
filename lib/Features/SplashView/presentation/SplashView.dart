import 'package:doctor/Features/SplashView/presentation/widgets/SplashViewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
  static String id = 'SplashView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}
