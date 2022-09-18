import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon(
      {Key? key,
      required this.ontap,
      required this.iconData,
      @required this.size})
      : super(key: key);
  VoidCallback ontap;
  IconData iconData;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Icon(
        iconData,
        size: size,
      ),
    );
  }
}
