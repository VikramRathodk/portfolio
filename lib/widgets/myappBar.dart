import 'package:flutter/material.dart';
import 'package:portfolio_vikram/sreens/home_page.dart';
import 'package:portfolio_vikram/sreens/user_profile.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  final IconData icon;

  MyAppBar({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.green),
      backgroundColor: Color.fromARGB(57, 252, 252, 252),
      elevation: 0,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            icon,
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
            print("Inside Homepage");
          },
        ),
        IconButton(
          icon: Icon(
            Icons.person,
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserProfile()),
            );
            print("Inside Profile page click");
          },
        ),
      ],
    );
  }
}
