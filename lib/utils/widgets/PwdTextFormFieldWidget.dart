// ignore_for_file: must_be_immutable
import 'package:deli_dove/utils/allimports/allimports.dart';
import 'package:flutter/material.dart';

class PwdTextFormFieldWidget extends StatefulWidget {

  final double? fontSize;
  final String? hintText;
  final double? height;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? autofocus;
  final Color? fontColor;
  final double? width;
  final String? labelText;


  final void Function(String)? onChanged;
  PwdTextFormFieldWidget({
    Key? key,
    this.fontSize,
    this.height,
    this.controller,
    this.validator,
    this.onChanged,
    this.fontColor,
    this.hintText,
    this.width,
    this.labelText,
    this.autofocus=false,
  }) : super(key: key);

  @override
  State<PwdTextFormFieldWidget> createState() => _PwdTextFormFieldWidgetState();
}

class _PwdTextFormFieldWidgetState extends State<PwdTextFormFieldWidget> {

  bool isPaasword = true;
  @override
  Widget build(BuildContext context){
    return Container(
        alignment: Alignment.center,
        width: widget.width,
        height: widget.height ?? 55,
        child: Form(
          child: TextFormField(
            controller: widget.controller,
            autofocus: widget.autofocus ?? false,
            validator: widget.validator,
            cursorColor: Colors.orange,
            obscureText: isPaasword,
            style: TextStyle(
                fontSize:widget.fontSize??16,
                color:  Colors.black,
                fontFamily: 'PTSans'
            ),
            cursorWidth: 1,
            decoration: InputDecoration(

              suffixIcon:  GestureDetector(
                onTap: () {
                  setState(() {
                    isPaasword =! isPaasword;
                  });
                },
                child: Icon(
                  isPaasword ? Icons.visibility :Icons.visibility_off,
                  color: isPaasword ? Colors.grey :appcolors,
                  size: 24,
                ),
              ),
              contentPadding: EdgeInsets.all(18),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: widget.labelText,
              labelStyle: TextStyle(color: appcolors),
              border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.black12,width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: appcolors,width: 2.0),
              ),
              hintText: widget.hintText ?? "Enter Value",
              hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: 16, ),
              errorBorder: InputBorder.none,
              errorStyle: TextStyle(color: Colors.red,fontSize: 08),
            ),
          ),
        )
    );
  }
}