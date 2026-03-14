import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_text_stayles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.isPassword,
    this.style,
    this.hintText,
  });
  final bool? isPassword;
  final TextStyle? style;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscuringCharacter: '●', // add big dot as obscuring character
      obscureText: isPassword ?? false,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      cursorColor: Colors.white,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        filled: true,
        fillColor: Color(0xff1D1D1D),
        hintText: hintText,
        hintStyle: AppTextStyles.lato16Regular.copyWith(
          color: Color(0xff535353),
        ),
        enabledBorder: focusedBorder(),
        focusedBorder: focusedBorder(),
      ),
    );
  }

  OutlineInputBorder focusedBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xff979797)),
      borderRadius: BorderRadius.circular(6),
    );
  }
}
