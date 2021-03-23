import 'package:flutter/material.dart';

class CustomTextField {
  static Widget textFormField({
    @required labelText,
    @required BuildContext context,
    @required Color color,
    Text prefixText,
    Icon prefixIcon,
    String hintText,
    String sufixText,
    double fontSize,
    TextEditingController controller,
    @required String validator(String value),
    @required void onChanged(String),
  }) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15)),
      child: Theme(
        data: Theme.of(context).copyWith(errorColor: Colors.red),
        child: TextFormField(
          cursorColor: color,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(
            prefix: prefixText,
            prefixIcon: prefixIcon,
            hintText: hintText,
            suffixText: sufixText,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintStyle: TextStyle(fontFamily: 'OpenSans', fontSize: fontSize),
            labelText: labelText,
            labelStyle: TextStyle(fontFamily: 'OpenSans', fontSize: fontSize),
          ),
          style: TextStyle(fontFamily: 'OpenSans', fontSize: fontSize),
          controller: controller,
          validator: validator,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
