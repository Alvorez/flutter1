import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';

class custombutton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final VoidCallback? action;
  const custombutton({
    super.key,
    required this.usernameController,
    this.action,
    required this.label,
    this.onPressed,
    // ignore: non_constant_identifier_names
  });

  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: appWhite,
        disabledForegroundColor: appWhite,
        elevation: 5.0,
        shadowColor: appWhite,
        padding: const EdgeInsets.all(20.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: () {
        //Anonymous function ie function with no name
        print('Button clicked ${usernameController.text}');
      },
      child: const Text('Login'),
    );
  }
}
