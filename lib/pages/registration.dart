import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/pages/dashboard_page.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/views/customcontroller.dart';
import 'package:flutter_application_1/views/customtext.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
          title: const Text('Welcome to Al '),
          centerTitle: true,
          backgroundColor: primaryColor,
          foregroundColor: appBlack,
          titleTextStyle: const TextStyle(
            color: appWhite,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(100.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Created a widget for the text
                Image.asset(
                  "assets/images/filepic.jpeg",
                  height: 200,
                  width: 300,
                ),
                const CustomText(
                  "Registration Screen",
                  label: 'Registration Page',
                  fontSize: (24.0),
                  fontWeight: FontWeight.bold,
                ),
                const CustomText(
                  "Username",
                  label: 'Username',
                  fontSize: (18.0),
                ),
                const CustomTextWidget(
                  "Username",
                  label: 'Username',
                  hint: "Username",
                  icon: Icons.person,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const CustomText(
                  "Phome number/email",
                  label: 'Phone number/email',
                  fontSize: (18.0),
                ),
                const CustomTextWidget(
                  "Phone number/email",
                  label: 'Phone number/email',
                  hint: "Phone number/Email",
                  icon: Icons.phone,
                ),
                const SizedBox(
                  height: 10.0,
                ),

                const CustomText(
                  "Password",
                  label: 'Password',
                  fontSize: (18.0),
                ),
                const CustomTextWidget(
                  "PASSWORD",
                  label: 'password',
                  hint: "Password",
                  icon: Icons.lock,
                  hideText: true,
                  ispassword: true,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const CustomText(
                  "Confirm Password",
                  label: 'Confirm Password',
                  fontSize: (18.0),
                ),
                const CustomTextWidget(
                  "PASSWORD",
                  label: 'password',
                  hint: "Password",
                  icon: Icons.lock,
                  hideText: true,
                  ispassword: true,
                ),
                const SizedBox(
                  height: 10.0,
                ),

                const CustomText(
                  "We keep things private",
                  label: 'Welcome to Al Data Store',
                  fontSize: (18.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),

                //Button to navigate to the login page
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: const Text('Register for an account'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
