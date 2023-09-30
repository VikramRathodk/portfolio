// ignore: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio_vikram/widgets/drawer.dart';
import 'package:portfolio_vikram/widgets/myappBar.dart';
import 'package:portfolio_vikram/widgets/sizeBox_container.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key); // Use 'Key?' and 'super(key: key)' to fix the constructor

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: MyAppBar(title: 'Mobile view'),
      ),
      backgroundColor: Color.fromARGB(255, 168, 150, 10),
      drawer: MyDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return MyBox();
                    },
                  ),
                ),
              ),
             
            ],
          ),
        ),
      ),
  
    );
  }
}
