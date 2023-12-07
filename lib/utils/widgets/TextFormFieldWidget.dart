import 'package:flutter/material.dart';

import '../color/color.dart';

class TextFormFieldWgt extends StatelessWidget {
  final double? fontSize;
  final String? hintText;
  final String labelText;
  final double? height;
  final double? width;
  final double? borderRadius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final TextEditingController? controller;
  final bool? autofocus;
  final Color? fontColor;
  final TextInputType? keyboardType;
  final bool? enable;
  int? maxLength;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  TextFormFieldWgt(
      {Key? key,
      this.fontSize,
      this.maxLength,
      this.controller,
      this.validator,
      this.margin,
      this.height,
      this.borderRadius,
      this.padding,
      this.onChanged,
      this.fontColor,
      this.hintText,
      this.width,
      this.enable,
      required this.labelText,
      this.autofocus = false,
      this.keyboardType,
      this.onSaved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: width,
        height: height ?? 55,
        child: TextFormField(
          enabled: enable ?? true,
          keyboardType: keyboardType,
          controller: controller,
          autofocus: autofocus ?? false,
          validator: validator,
          cursorColor: appcolors,
          maxLength: maxLength,
          style: TextStyle(
              fontSize: fontSize ?? 16,
              color: fontColor ?? Colors.black,
              fontFamily: 'PTSans'),
          cursorWidth: 1,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: labelText,
            contentPadding: EdgeInsets.all(18),
            labelStyle: TextStyle(color: appcolors),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.black12, width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: appcolors, width: 2.0),
            ),
            hintText: hintText ?? "Enter Value",
            hintStyle: TextStyle(
              color: Colors.grey.shade400,
              fontSize: fontSize,
            ),
            errorBorder: InputBorder.none,
            errorStyle: TextStyle(color: Colors.red, fontSize: 08),
          ),
          onSaved: onSaved,
        ));
  }
}
