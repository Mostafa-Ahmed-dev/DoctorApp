import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    Key? key,
    required this.color,
    required this.widget,
    @required this.elevation,
    required this.valueOfwidth,
    required this.vlaueOfhieght,
  }) : super(key: key);
  //
  final Color color;
  final Widget widget;
  final double? elevation;
  final double vlaueOfhieght;
  final double valueOfwidth;

  //
  @override
  Widget build(BuildContext context) {
    double hieght = MediaQuery.of(context).size.height * vlaueOfhieght;
    double width = MediaQuery.of(context).size.width * valueOfwidth;
    return Container(
      height: hieght,
      width: width,
      child: Card(
        color: color,
        child: widget,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
