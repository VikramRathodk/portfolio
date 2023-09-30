import 'package:flutter/material.dart';
import 'package:portfolio_vikram/widgets/webviewcontent.dart';

import '../widgets/drawer.dart';
import '../widgets/myappBar.dart';

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: MyAppBar(
          title: "Vikram Blog",
        ),
      
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: WebViewContent(),
      ),
    );
  }
}
