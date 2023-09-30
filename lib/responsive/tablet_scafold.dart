// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio_vikram/widgets/drawer.dart';
import 'package:portfolio_vikram/widgets/myappBar.dart';
import 'package:portfolio_vikram/widgets/sizeBox_container.dart';

class TabletScafold extends StatefulWidget {
  const TabletScafold({super.key});

  @override
  State<TabletScafold> createState() => _TabletScafoldState();
}

class _TabletScafoldState extends State<TabletScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: MyAppBar(
          title: 'TAblet  view',
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 228, 223, 185),
      drawer: MyDrawer(),
      body: Column(children: [
        // first 4 boxes in grid
        AspectRatio(
          aspectRatio: 4,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (context, index) {
                return MyBox();
              },
            ),
          ),
        ),
        
      ]),
    );
  }
}
