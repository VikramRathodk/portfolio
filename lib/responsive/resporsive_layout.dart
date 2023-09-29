import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScafold;
  final Widget tabletScafold;
  final Widget destopScafold;

  ResponsiveLayout(
      {super.key, required this.mobileScafold,
      required this.tabletScafold,
      required this.destopScafold});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileScafold;
      } else if (constraints.maxWidth < 1100) {
        return tabletScafold;
      } else {
        return destopScafold;
      }
    });
  }
}
