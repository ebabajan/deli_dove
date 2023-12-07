import 'package:flutter/material.dart';

class SearchBarTextField extends StatefulWidget {
  final double? fontSize;
  final double? IconSize;
  final String? HintText;
  final double? height;
  final double? width;
  final double? borderRadius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? autofocus;
  final Color? fontColor;
  final void Function(String)? onChanged;

  const SearchBarTextField(
      {Key? key,
      this.fontSize,
      this.controller,
      this.validator,
      this.margin,
      this.height,
      this.borderRadius,
      this.padding,
      this.onChanged,
      this.fontColor,
      this.HintText,
      this.width,
      this.autofocus = false,
      this.IconSize})
      : super(key: key);

  @override
  State<SearchBarTextField> createState() => _SearchBarTextFieldState();
}

class _SearchBarTextFieldState extends State<SearchBarTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: widget.width,
        height: widget.height ?? 45,

        margin: widget.margin ?? EdgeInsets.all(08),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5.0,
                offset: Offset(0, 5),
              ),
            ]),
        child: TextFormField(
          controller: widget.controller,
          autofocus: widget.autofocus ?? false,
          validator: widget.validator,
          onChanged: widget.onChanged,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: TextStyle(fontSize: 16, color: Colors.black),
          cursorWidth: 1,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              size: widget.IconSize ?? 25,
            ),
            border: InputBorder.none,
            hintText: widget.HintText ?? "Search",
            hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: widget.fontSize ?? 16,
            ),
            errorBorder: InputBorder.none,
            errorStyle: TextStyle(color: Colors.red, fontSize: 08),
          ),
        ));
  }
}
