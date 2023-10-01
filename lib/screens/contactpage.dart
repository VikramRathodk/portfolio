import 'package:flutter/material.dart';
import 'package:portfolio_vikram/widgets/drawer.dart';
import 'package:portfolio_vikram/widgets/myappBar.dart';


class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: MyAppBar(
          title: 'Contact',
        ),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text("contact me"), 
      ),
    );
  }
}