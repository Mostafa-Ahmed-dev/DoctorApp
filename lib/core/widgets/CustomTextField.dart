import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      required this.hint,
      @required this.hintColor,
      @required this.inputType,
      @required this.borderRadius,
      required this.enabledcolor,
      required this.focusedcolor,
      @required this.maxLines,
      @required this.onchanged})
      : super(key: key);
  //
  final String hint;
  final Color? hintColor;
  final TextInputType? inputType;
  final BorderRadius?
      borderRadius; // ف البوردر ريدس لازم ااكد عليه انها مش هتبقي ب نل
  final Color enabledcolor; // مينفعش يكونو ب نل ابدا  حتي لو هتعمل  التعجب
  final Color focusedcolor; //ميينفعش يكونو ب نل ابدا  حتي لو هتعمل  التعجب
  final int? maxLines;
  Function(String)? onchanged;
  @override

  //
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) return 'field is required';
      },
      onChanged: onchanged,
      maxLines: maxLines,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: hintColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius!,
          borderSide: BorderSide(color: enabledcolor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius!,
          borderSide: BorderSide(color: focusedcolor),
        ),
      ),
    );
  }
}
