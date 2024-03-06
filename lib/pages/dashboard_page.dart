import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({
    super.key,

    });

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          items: const [
            Icon(
              Icons.home,
            size: 30,
            color: primaryColor,
            ),
            Icon(
              Icons.library_books_outlined,
            size: 30,
            color: primaryColor,
            ),
            Icon(
              Icons.person,
            size: 30,
            color: primaryColor,
            ),
          ]),

        body: ListView(
      padding: EdgeInsets.zero,
      children: [
        Container(
            decoration: BoxDecoration(
                color: Theme.of(context).hoverColor,
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(50))),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text('FILES',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.black87)),
                  subtitle: Text(
                    'Welcome',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: Colors.black54),
                  ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/filepic.jpeg'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            )),
        Container(
          color: appWhite,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(100)
                )
                ),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: [
                itemDashboard('videos',CupertinoIcons.play_arrow ,Colors.blueGrey),
                itemDashboard('photos',CupertinoIcons.photo_on_rectangle ,const Color.fromARGB(255, 199, 53, 228)),
                itemDashboard('Contacts',CupertinoIcons.person_3 ,const Color.fromARGB(255, 198, 202, 205)),
                itemDashboard('APKs',CupertinoIcons.app_badge ,const Color.fromARGB(255, 79, 235, 76)),
                itemDashboard('Others',CupertinoIcons.add_circled ,const Color.fromARGB(255, 226, 26, 23)),
                
              ],
            ),
          ),
        )
      ],
    ));
    // TODO: implement build
  }

  itemDashboard(String title, IconData iconData, Color background) =>
      Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          boxShadow:  [
            BoxShadow(
              offset: const Offset(0,5),
              color: Theme.of(context).primaryColor.withOpacity(.2),
              spreadRadius: 2,
              blurRadius: 5,
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: background, 
                shape: BoxShape.circle
                ),
                child: Icon(iconData,color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(title, style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
      );
}

