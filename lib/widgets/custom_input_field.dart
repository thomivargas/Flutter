import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField(
      {super.key,
      this.hintText,
      this.labelText,
      this.icon,
      this.keyboardType,
      this.obscureText = false,
      required this.formProperty,
      required this.formValues});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: true,
        onChanged: (value) => formValues[formProperty] = value,
        keyboardType: keyboardType,
        obscureText: obscureText,
        validator: (value) {
          if (value == null) return 'Campo obligatorio';
          return value.length < 3 ? 'Minimo de 3 caracteres' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          icon: icon == null ? null : Icon(icon),
        ));
  }
}
