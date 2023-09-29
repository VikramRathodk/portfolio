import 'package:flutter/material.dart';
import 'package:portfolio_vikram/sreens/home_page.dart';
import 'package:portfolio_vikram/widgets/drawerListItem.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(Icons.favorite),
          ),
          DrawerListItem(
            icon: Icons.home,
            title: "H O M E",
            route: MaterialPageRoute(builder: (context) => HomePage()),
          ),
          DrawerListItem(
            icon: Icons.message,
            title: "M E S S A G E",
            route: MaterialPageRoute(builder: (context) => HomePage()),
          ),
          DrawerListItem(
            icon: Icons.settings,
            title: "S E T T I N G",
            route: MaterialPageRoute(builder: (context) => HomePage()),
          ),
          DrawerListItem(
            icon: Icons.logout,
            title: "L O G O U T",
            route: MaterialPageRoute(builder: (context) => HomePage()),
          ),
        ],
      ),
    );
  }
}
