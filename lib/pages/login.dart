import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/pages/dashboard_page.dart';
import 'package:flutter_application_1/pages/registration.dart';
import 'package:flutter_application_1/views/custombutton.dart';
import 'package:flutter_application_1/views/customcontroller.dart';
import 'package:flutter_application_1/views/customtext.dart';

class Home extends StatelessWidget {
  const Home({super.key,});
  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();

    var customText2 = const CustomText(
      label: 'Login Screen',
      'Login Page',
      fontSize: (24.0),
      fontWeight: FontWeight.bold,
    );
    var customText = customText2;
    return Scaffold(
      
      appBar: AppBar(
          title: const Text('DATA STORE'),
          centerTitle: true,
          backgroundColor: primaryColor,
          foregroundColor: appWhite,
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

                customText,
                const SizedBox(
                  height: 10.0,
                ),

                const CustomText(
                  "Username",
                  label: 'Username',
                  fontSize: (18.0),
                ),
                const CustomTextWidget(
                  "Username",
                  label: 'Username',
                  hint: "Phone number/Email",
                  icon: Icons.person,
                  
                  
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
                  "Forgot password",
                  label: 'Forgot password?',
                  fontSize: (18.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),

               
                const SizedBox(
                  height: 10.0,
                ),
                MaterialButton(
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardPage()));
                },
                minWidth: 80,
                height: 50,
                color: appWhite,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                    ),
                    ),
                ),
                const SizedBox(height: 10,),
                //Button to navigate to the registration page
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegistrationPage()));
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
