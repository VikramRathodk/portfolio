import 'package:flutter/material.dart';
import 'package:portfolio_vikram/widgets/drawer.dart';
import 'package:portfolio_vikram/widgets/myappBar.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: MyAppBar(
          title: 'Profile',
          icon: Icons.home,
        ),
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [Text("hello user profile")],
      ),
    );
  }
}
