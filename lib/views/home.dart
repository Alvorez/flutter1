// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/configs/constants.dart';
// import 'package:flutter_application_1/pages/registration.dart';
// import 'package:get/get.dart';
// HomeController homeController = Get.put(HomeController());
// var Screens = [
//   const Text("Home"),
//   const RegistrationPage(),
//   const Text("Settings"),
// ];

// class Home extends StatelessWidget {
//   const Home({super.key, required Null Function() onTap});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("FILE MANAGER")),
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: primaryColor,
//         color: primaryColor,
//         items: const [
//           Icon(
//             Icons.home,
//             color: primaryColor,
//           ),
//           Icon(
//             Icons.person,
//             color: primaryColor,
//           ),
//           Icon(
//             Icons.settings,
//             color: primaryColor,
//           ),
//         ],
//         onTap: (index) {
//           homeController.updateSelectedPage(index);
//         },
//       ),
//       body: Obx(
//         () => Center(
//           child: Screens[homeController.selectedPage.value],
//         ),
//       ),
//     );
//   }
// }
