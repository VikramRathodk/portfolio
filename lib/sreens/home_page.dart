import 'package:flutter/material.dart';
import 'package:portfolio_vikram/responsive/mobile_scafold.dart';
import 'package:portfolio_vikram/responsive/resporsive_layout.dart';

import '../responsive/destop_scafold.dart';
import '../responsive/tablet_scafold.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileScafold:  MobileScaffold(),
      tabletScafold: TabletScafold(),
      destopScafold: DesktopScafold(),
    );
  }
}
