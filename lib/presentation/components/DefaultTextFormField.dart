import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  // final String label;
  final String validation;
  final double radius;
  final Color borderColor;
  final Color fillColor;
  final double contentPadding;
  final TextInputType type;
  final bool isPassword;
  final bool isFilled;
  final TextEditingController controller;
  // final Widget prefixIcon;
  // final Widget suffixIcon;
  final FloatingLabelBehavior floatingLabelBehavior;
  // final Function(String) onChanged;

  const DefaultTextFormField({
    Key? key,
    // required this.label,
    required this.radius,
    required this.type,
    required this.controller,
    required this.validation,
    this.isPassword = false,
    // required this.prefixIcon,
    // required this.suffixIcon,
    // required this.onChanged,
    required this.borderColor,
    this.contentPadding = 10,
    this.floatingLabelBehavior = FloatingLabelBehavior.auto,
    required this.fillColor,
    required this.isFilled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      maxLines: 1,
      // onChanged: onChanged,
      obscureText: isPassword,
      validator: (value) {
        if (value!.isEmpty) {
          return validation;
        }
        return null;
      },
      decoration: InputDecoration(
        filled: isFilled,
        fillColor: fillColor,
        // prefixIcon: prefixIcon,
        // suffixIcon: suffixIcon,
        // labelText: label,
        contentPadding: EdgeInsets.symmetric(horizontal: contentPadding),
        floatingLabelBehavior: floatingLabelBehavior,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: borderColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}