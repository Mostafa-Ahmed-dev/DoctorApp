import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomVerticalSpace extends StatelessWidget {
  CustomVerticalSpace({Key? key, required this.value}) : super(key: key);
  double value;
  @override
  Widget build(BuildContext context) {
    double hight = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) *
        value;
    return SizedBox(
      height: hight,
    );
  }
}

class CustomHorizontalSpace extends StatelessWidget {
  CustomHorizontalSpace({Key? key, required this.value}) : super(key: key);
  double value;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * value;
    return SizedBox(
      width: width,
    );
  }
}

class SizeConfighieght {
  static double? hieght;

  double init(BuildContext context) {
    hieght = MediaQuery.of(context).size.height;

    return hieght!;
  }
}

class SizeConfigwidth {
  static double? width;

  double init(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return width!;
  }
}
