import 'package:flutter/material.dart';
import 'package:portfolio_vikram/responsive/destop_scafold.dart';
import 'package:portfolio_vikram/responsive/mobile_scafold.dart';
import 'package:portfolio_vikram/responsive/resporsive_layout.dart';
import 'package:portfolio_vikram/responsive/tablet_scafold.dart';
import 'package:portfolio_vikram/screens/home_page.dart';

import 'widgets/register_web_webview.dart';

void main() {
  registerWebViewWebImplimentation();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vikram Rathod',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage()
    );
  }
}
