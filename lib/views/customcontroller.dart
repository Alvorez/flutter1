import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';

class CustomTextWidget extends StatelessWidget {
  final String? hint;
  final IconData? icon;
  final bool? hideText;
  final bool ispassword;
  const CustomTextWidget(
    String s, {
    super.key,
    required String label,
    this.hint,
    this.icon,
    this.hideText = false,
    this.ispassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: primaryColor, width: 2.0),
        ),
        hintText: hint,
        prefixIcon: Icon(icon),
        suffixIcon: ispassword
            ? const Icon(Icons.visibility)
            : Container(
                height: 10,
                width: 10,
              ),
      ),
      controller: TextEditingController(),
      obscureText: hideText!,
    );
  }
}
