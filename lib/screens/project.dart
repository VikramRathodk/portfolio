import 'package:flutter/material.dart';
import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';

import '../widgets/drawer.dart';
import '../widgets/myappBar.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: MyAppBar(
            title: "Projects",
          ),
        ),
        drawer: MyDrawer(),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SegmentedTabControl(
                  backgroundColor: Colors.white,
                  indicatorColor: Colors.blue.shade200,
                  tabTextColor: Colors.black45,
                  selectedTabTextColor: Colors.white,
                  tabs: [
                    SegmentTab(
                      label: 'ACCOUNT',
                      color: Colors.red.shade200,
                    ),
                    SegmentTab(
                      label: 'HOME',
                      backgroundColor: Colors.blue.shade100,
                      selectedTextColor: Colors.black45,
                      textColor: Colors.black26,
                    ),
                    const SegmentTab(label: 'NEW'),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    ProjectCard(
                      color: Colors.red.shade200, title: 'Account', description: 'this is the account section ',
                    ),
                    ProjectCard(
                      color: Colors.red.shade200, title: 'Home', description: '',
                    ),
                    ProjectCard(
                      color: Colors.red.shade200, title: 'New', description: '',
                    ),
                   
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.title,
    required this.description,
    required this.color,
  }) : super(key: key);

  final String title;
  final String description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8), // You can adjust the margin as needed
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

