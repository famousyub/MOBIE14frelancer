import 'package:flutter/material.dart';

class AppInpput extends StatelessWidget {
  const AppInpput(
      {super.key,
      required this.hint,
      this.initialValue,
      this.password = false,
      this.prefIcon,
      this.suffixIcon});
  final String hint;
  final String? initialValue;

  final IconData? prefIcon;

  final Widget? suffixIcon;
  final bool password;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: password,
      initialValue: initialValue,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      validator: (value) {
        if (value!.isEmpty) {
          return "Field required";
        }
        return null;
      },
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(22),
          prefixIcon: Icon(
            prefIcon,
            color: Colors.black54,
          ),
          suffixIcon: suffixIcon,
          hintText: hint,
          border: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 0.2, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(15)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 0.2, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(15)),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 0.2, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(15)),
          filled: true,
          fillColor: Colors.white),
    );
  }
}
