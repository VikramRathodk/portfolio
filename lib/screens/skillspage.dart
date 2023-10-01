import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
import 'package:portfolio_vikram/widgets/myappBar.dart';
import 'package:vertical_percent_indicator/vertical_percent_indicator.dart';
import '../widgets/drawer.dart';

class SkillsPage extends StatefulWidget {
  SkillsPage({Key? key}) : super(key: key);

  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  // Define a list of skills with their corresponding percentages.
  final List<Map<String, dynamic>> skills = [
    {'name': 'Flutter', 'percentage': 90},
    {'name': 'Dart', 'percentage': 90},
    {'name': 'React', 'percentage': 85},
    {'name': 'Java', 'percentage': 95},
  ];

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
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("../assets/images/bg4.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Software Development Skills",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: skills
                  .map((skill) => SkillProgressBar(
                        skillName: skill['name'],
                        percentage: skill['percentage'],
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillProgressBar extends StatelessWidget {
  final String skillName;
  final int percentage;

  SkillProgressBar({required this.skillName, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            VerticalBarIndicator(
              percent: percentage / 100,
              height: 250,
              
              animationDuration: Duration(seconds: 1),
              circularRadius: 0,
              color: [
                Colors.limeAccent,
                Colors.green,
              ],
              width: 80,
              header: '$percentage %',
              footer: skillName,
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    ));
  }
}
