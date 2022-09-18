import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:doctor/Features/Base/Presentation/pages/AppoinmentPage/AppoinmentPage.dart';
import 'package:doctor/Features/Base/Presentation/pages/FirstBase/widgets/FirstBaseBody.dart';
import 'package:doctor/core/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstBase extends StatefulWidget {
  const FirstBase({Key? key}) : super(key: key);
  static String id = 'FirstBase';
  @override
  State<FirstBase> createState() => _FirstBaseState();
}

int activeindex = 0;

class _FirstBaseState extends State<FirstBase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryColor,
      body: FirstBaseBody(),
      bottomNavigationBar: AnimatedBottomNavigationBar(
          gapLocation: GapLocation.none,
          activeColor: Colors.blue,
          icons: [
            // max just  5 icon
            Icons.home,
            Icons.people,
            Icons.calendar_month,
            Icons.person,
          ],
          activeIndex: activeindex,
          onTap: (index) {
            setState(() {
              activeindex = index;

              if (index == 2) {
                Navigator.pushNamed(context, AppoinmentPage.id);
              }
            });
          }),
    );
  }
}
