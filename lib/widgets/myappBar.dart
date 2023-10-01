import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:portfolio_vikram/screens/home_page.dart';

import '../screens/contactpage.dart';
import '../screens/skillspage.dart';

class MyAppBar extends StatelessWidget {
  final String title;

  MyAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.green),
      backgroundColor: Color.fromARGB(255, 228, 198, 241),
      elevation: 0.0,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      // actions: [
      //   Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       InkWell(
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => HomePage(),
      //             ),
      //           );
      //         },
      //         child: Container(
      //           padding: EdgeInsets.all(10.0),
      //           decoration: BoxDecoration(
      //             color: Color.fromARGB(0, 177, 128, 162),
      //             borderRadius: BorderRadius.circular(5),
      //             // gradient: LinearGradient(colors: [
      //             //   Color.fromARGB(255, 230, 18, 3),
      //             //   Color.fromARGB(255, 182, 231, 6),
      //             //   Color.fromARGB(255, 228, 168, 4),
      //             // ]),
      //           ),
      //           child: Text(
      //             "Home",
      //             style: TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.black,
      //             ),
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         width: 30,
      //       ),
      //       InkWell(
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => SkillsPage(),
      //             ),
      //           );
      //         },
      //         child: Container(
      //           padding: EdgeInsets.all(10.0),
      //           decoration: BoxDecoration(
      //             color: Color.fromARGB(0, 177, 128, 162),
      //             borderRadius: BorderRadius.circular(5),
      //             // gradient: LinearGradient(colors: [
      //             //   Color.fromARGB(255, 230, 18, 3),
      //             //   Color.fromARGB(255, 182, 231, 6),
      //             //   Color.fromARGB(255, 228, 168, 4),
      //             // ]),
      //           ),
      //           child: Text(
      //             "Skills",
      //             style: TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.black,
      //             ),
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         width: 30,
      //       ),
      //       InkWell(
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => ContactMePage(),
      //             ),
      //           );
      //         },
      //         child: Container(
      //           padding: EdgeInsets.all(10.0),
      //           decoration: BoxDecoration(
      //             color: Color.fromARGB(0, 177, 128, 162),
      //             borderRadius: BorderRadius.circular(5),
      //             // gradient: LinearGradient(colors: [
      //             //   Color.fromARGB(255, 230, 18, 3),
      //             //   Color.fromARGB(255, 182, 231, 6),
      //             //   Color.fromARGB(255, 228, 168, 4),
      //             // ]),
      //           ),
      //           child: Text(
      //             "Contact",
      //             style: TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.black,
      //             ),
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         width: 40,
      //       ),
      //     ],
      //   ),
      // ],
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 10,
            ),
            AnimatedButton(
              height: 40,
              width: 100,
              text: 'Home',
              isReverse: true,
              selectedTextColor: Colors.black,
              transitionType: TransitionType.TOP_CENTER_ROUNDER,
              animationDuration: Duration(seconds: 1),
              backgroundColor: Colors.black,
              borderColor: Colors.white,
              borderRadius: 10,
              borderWidth: 1,
              onPress: () {
                Future.delayed(
                  Duration(seconds: 1),
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(
              width: 40,
            ),
            AnimatedButton(
              height: 40,
              width: 100,
              text: 'Skills',
              isReverse: true,
              selectedTextColor: Colors.black,
              transitionType: TransitionType.TOP_CENTER_ROUNDER,
              animationDuration: Duration(seconds: 1),
              backgroundColor: Colors.black,
              borderColor: Colors.white,
              borderRadius: 10,
              borderWidth: 1,
              onPress: () {
                Future.delayed(Duration(seconds: 1), () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SkillsPage(),
                  ),
                );
                });
              },
            ),
            SizedBox(
              width: 40,
            ),
            AnimatedButton(
              height: 40,
              width: 100,
              text: 'Contact ',
              isReverse: true,
              selectedTextColor: Colors.black,
              transitionType: TransitionType.TOP_CENTER_ROUNDER,
              animationDuration: Duration(seconds: 1),
              backgroundColor: Colors.black,
              borderColor: Colors.white,
              borderRadius: 10,
              borderWidth: 1,
              onPress: () {
                Future.delayed(Duration(seconds: 1), () {
                   Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactMePage(),
                  ),
                );
                });
              },
            ),
            SizedBox(
              width: 40,
            ),
          ],
        ),
      ],
    );
  }
}
