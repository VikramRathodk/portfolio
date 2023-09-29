  import 'package:flutter/material.dart';

  class DrawerListItem extends StatelessWidget {
    final IconData icon;
    final String title;
    final Route<dynamic>? route;

    const DrawerListItem({
      Key? key,
      required this.icon,
      required this.title,
      this.route,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return ListTile(
        leading: Icon(icon),
        title: Text(title),
        onTap: () {
          if (route != null) {
            Navigator.of(context).push(route!);
          }
        },
      );
    }
  }
