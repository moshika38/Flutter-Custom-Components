library coustom_flutter_widgets;

import 'package:flutter/material.dart';

class CoustomInputWidget extends StatelessWidget {
  final double? width;
  final double? heigth;

  final Color? backGroundColor;

  final Color? focusBorderColor;

  final Color? borderColor;
  final double? borderSize;
  final double? borderRadius;

  final String? hintText;
  final Color? hintTextColor;
  final double? hintTextSize;
  final FontWeight? hintTextFontWeigth;

  final IconData? prefixIcon;
  final double? prefixIconSize;
  final Color? prefixIconColor;

  final IconData? suffixIcon;
  final double? suffixIconSize;
  final Color? suffixIconColor;

  final FontWeight? inputTextFontWeigth;
  final double? inputTextSize;
  final Color? inputTextColor;

  final String? errMassege;
  final Color? errBorderColor;

  final TextStyle? textStyle;

  final double? contentPaddingHorizontal;

  final TextEditingController controller;

  final TextAlign? textAlign;

  const CoustomInputWidget({
    super.key,
    this.width,
    this.heigth,
    this.backGroundColor,
    this.focusBorderColor,
    this.borderColor,
    this.borderSize,
    this.borderRadius,
    this.hintText,
    this.hintTextColor,
    this.hintTextSize,
    this.hintTextFontWeigth,
    this.prefixIcon,
    this.prefixIconSize,
    this.prefixIconColor,
    this.suffixIcon,
    this.suffixIconSize,
    this.suffixIconColor,
    this.inputTextFontWeigth,
    this.inputTextSize,
    this.inputTextColor,
    this.contentPaddingHorizontal,
    this.errMassege,
    this.errBorderColor,
    required this.controller,
    this.textStyle,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        textAlign: textAlign ?? TextAlign.left,
        controller: controller,
        validator: (value) {
          if (value!.isEmpty) {
            return errMassege;
          }
          return null;
        },
        style: textStyle ??
            TextStyle(
              color: inputTextColor,
              fontSize: inputTextSize,
              fontWeight: inputTextFontWeigth,
            ),
        decoration: InputDecoration(
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: errBorderColor ?? Colors.red,
            width: borderSize ?? 1,
          )),
          contentPadding: EdgeInsets.symmetric(
              vertical: heigth ?? 00,
              horizontal: contentPaddingHorizontal ?? 15),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
            borderSide: BorderSide(
              color: borderColor ?? Colors.black,
              width: borderSize ?? 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
            borderSide: BorderSide(
              color: focusBorderColor ?? borderColor ?? Colors.black,
              width: borderSize ?? 1,
            ),
          ),
          fillColor: backGroundColor ?? Colors.white,
          filled: true,
          prefixIcon: prefixIcon != null
              ? Icon(
                  prefixIcon,
                  size: prefixIconSize,
                  color: prefixIconColor,
                )
              : null,
          suffixIcon: Icon(
            suffixIcon,
            size: suffixIconSize,
            color: suffixIconColor,
          ),
          hintText: hintText,
          hintStyle: textStyle ??
              TextStyle(
                color: hintTextColor,
                fontSize: hintTextSize,
                fontWeight: hintTextFontWeigth,
              ),
        ),
      ),
    );
  }
}


/*


==========================================================

TextEditingController _userInput = TextEditingController();

==========================================================

CoustomInputWidget(
  controller: _userInput,
),

==========================================================

if (_formKey.currentState!.validate()) {
    String userINputtext = _userInput.text;
    print(userINputtext);
}
==========================================================


 */