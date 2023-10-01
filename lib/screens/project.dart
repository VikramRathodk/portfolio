import 'package:flutter/material.dart';
import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:horizontal_list_view/horizontal_list_view.dart';

import '../widgets/drawer.dart';
import '../widgets/myappBar.dart';

// Define a class to represent project data
class Project {
  final String title;
  final String description;
  final String assetImagePath;

  Project(this.title, this.description, this.assetImagePath);
}

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> with TickerProviderStateMixin {
  late TabController _tabController;

  List<Project> webProjects = [
    Project(
        "CogniCode",
        "Developed a dynamic e-learning platform with a wide course range, accessible through a user-friendly web application. Enabled users to acquire skills and knowledge across diverse fields.",
        '../assets/images/profile.jpg'),
    Project("Website 2", "Description for Website 2",
        '../assets/images/profile.jpg'),
    Project("Website 3", "Description for Website 3",
        '../assets/images/profile.jpg'),
  ];

  List<Project> mobileProjects = [
    Project(
        "Online Food Delivery",
        "Online food delivery apps allow users to browse menus and place orders for delivery from their favorite restaurants, offering a convenient and hassle-free way to enjoy meals from the comfort of their own homes or workplaces.",
        '../assets/images/profile.jpg'),
    Project("App 2", "Description for App 2", 'assets/app2.png'),
    Project("App 3", "Description for App 3", 'assets/app3.png'),
  ];

  List<Project> newProjects = [
    Project("Project 1", "Description for Project 1", 'assets/project1.png'),
    Project("Project 2", "Description for Project 2", 'assets/project2.png'),
    Project("Project 3", "Description for Project 3", 'assets/project3.png'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      // Handle tab changes here
    });
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabSelection);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: MyAppBar(
          title: "Projects",
        ),
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SegmentedTabControl(
                backgroundColor: Colors.white,
                indicatorColor: Colors.blue.shade200,
                tabTextColor: const Color.fromARGB(115, 15, 12, 12),
                selectedTabTextColor: Colors.white,
                tabs: const [
                  SegmentTab(
                    label: 'Web Development',
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    backgroundGradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 202, 119, 223),
                        Color.fromARGB(255, 99, 164, 218),
                        Color.fromARGB(255, 125, 191, 221),
                      ], // Define your gradient colors
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  SegmentTab(
                    label: 'Mobile Development',
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    backgroundGradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 125, 191, 221),
                        Color.fromARGB(255, 202, 119, 223),
                        Color.fromARGB(255, 99, 164, 218),
                      ], // Define your gradient colors
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  SegmentTab(
                    label: 'New Development',
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    backgroundGradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 99, 164, 218),
                        Color.fromARGB(255, 202, 119, 223),
                        Color.fromARGB(255, 125, 191, 221),
                      ], // Define your gradient colors
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                ],
                controller: _tabController, // Use the TabController
              ),
            ),
            Expanded(
              child: _buildTabContent(),
            ),
          ],
        ),
      ),
    );
  }

  // Method to build the content based on the selected tab
  Widget _buildTabContent() {
    List<Project> currentTabProjects;

    switch (_tabController.index) {
      case 0:
        currentTabProjects = webProjects;
        break;
      case 1:
        currentTabProjects = mobileProjects;
        break;
      case 2:
        currentTabProjects = newProjects;
        break;
      default:
        currentTabProjects = webProjects;
    }

    return ListView.builder(
      itemCount: currentTabProjects.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(
            currentTabProjects[index].assetImagePath,
          ),
          title: Text(currentTabProjects[index].title),
          subtitle: Text(currentTabProjects[index].description),
          trailing: Icon(Icons.arrow_forward),
        );
      },
    );
  }
}
