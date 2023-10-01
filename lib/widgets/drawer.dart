import 'package:flutter/material.dart';
import 'package:portfolio_vikram/screens/blog.dart';
import 'package:portfolio_vikram/screens/home_page.dart';
import 'package:portfolio_vikram/widgets/drawerListItem.dart';

import '../screens/project.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(Icons.favorite),
          ),
          // DrawerListItem(
          //   icon: Icons.home,
          //   title: "H O M E",
          //   route: MaterialPageRoute(builder: (context) => HomePage()),
          // ),
          DrawerListItem(
            icon: Icons.settings,
            title: "P R O J E C T S",
            route: MaterialPageRoute(builder: (context) => Projects()),
          ),
          DrawerListItem(
            icon: Icons.message,
            title: "B L O G ",
            route: MaterialPageRoute(builder: (context) => Blog()),
          ),

          DrawerListItem(
            icon: Icons.logout,
            title: "S O C I A L S",
            route: MaterialPageRoute(builder: (context) => HomePage()),
          ),
        ],
      ),
    );
  }
}
