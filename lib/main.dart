import 'package:doctor/Features/Auth/presentation/pages/SignInPage/SignInPage.dart';
import 'package:doctor/Features/Auth/presentation/pages/SignUpPage/SignUpPage.dart';
import 'package:doctor/Features/Base/Presentation/pages/AppoinmentPage/AppoinmentPage.dart';
import 'package:doctor/Features/Base/Presentation/pages/CardBase/CardBase.dart';
import 'package:doctor/Features/Base/Presentation/pages/FirstBase/FirstBase.dart';
import 'package:doctor/Features/SplashView/presentation/SplashView.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // سطر لازم يتكتب لو هتكتب اي حاجه قبل لران اب

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const DoctorApp());
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashView.id: (context) => SplashView(),
        SignInPage.id: (context) => SignInPage(),
        SignUpPage.id: (context) => SignUpPage(),
        FirstBase.id: (context) => FirstBase(),
        CardBase1.id: (context) => CardBase1(),
        AppoinmentPage.id: (context) => AppoinmentPage(),
      },
      initialRoute: SplashView.id,
    );
  }
}
