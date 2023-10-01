import 'package:flutter/material.dart';
import 'package:portfolio_vikram/widgets/myappBar.dart';

import '../widgets/drawer.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: MyAppBar(
          title: 'Skills',
        ),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text("Skills"),
      ),
    );
  }
}
