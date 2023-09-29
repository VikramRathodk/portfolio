// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio_vikram/widgets/drawer.dart';
import 'package:portfolio_vikram/widgets/myappBar.dart';
import 'package:portfolio_vikram/widgets/sizeBox_container.dart';

class DesktopScafold extends StatefulWidget {
  const DesktopScafold({super.key});

  @override
  State<DesktopScafold> createState() => _DesktopScafoldState();
}

class _DesktopScafoldState extends State<DesktopScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: MyAppBar(
          title: 'Desktop view',
          icon: Icons.home,
        ),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hi, I am Vikram,Software Developer",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 36.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        width: 600.0,
                        child: Text(
                          "A dedicated and enthusiastic student currently pursuing a Master of Computer Applications (MCA) degree at Sardar Patel Institute Of Technology Mumbai. With a passion for technology and a strong desire to make a meaningful impact in the world of software engineering, I am committed to honing my skills and knowledge in this dynamic field.",
                          strutStyle: StrutStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Add your button's onPressed function here
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(10.0),
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8.0), // Adjust the border radius as needed
                          ),
                        ),
                        child: Text(
                          "Download Resume",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: Colors.white, // Text color
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, // Makes it a circular shape
                          border: Border.all(
                            color: const Color.fromARGB(
                                255, 72, 162, 236), // Border color
                            width: 2.0, // Border width
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 110,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        ),
                      ),
                    ],
                    
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "Projects",
                  strutStyle: StrutStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 30.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  height: 800,
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                            itemCount: 3,
                            padding: const EdgeInsets.all(15.0),
                            addRepaintBoundaries: true,
                            itemBuilder: (itemBuilder, index) {
                              return Row(
                                children: [
                                  //1st column
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      //1st column
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: const Color.fromARGB(255, 72,
                                                162, 236), // Border color
                                            width: 2.0, // Border width
                                          ),
                                        ),
                                        child: CircleAvatar(
                                          radius: 100,
                                          backgroundImage: AssetImage(
                                              'assets/images/profile.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 50.0,
                                  ),
                                  //2nd column
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          "Online Food Delivery ",
                                          style: TextStyle(
                                            fontSize:
                                                24.0, // Adjust the font size as needed
                                            fontWeight: FontWeight
                                                .bold, // Add bold style if desired
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.blue,
                                            ),
                                            child: Text(
                                              "2022",
                                              style: TextStyle(
                                                fontSize: 18.0,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10.0),
                                          Text(
                                            'Mobile Application',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10.0),
                                      Container(
                                        width: 500,
                                        child: Text(
                                          "Online food delivery apps allow users to browse menus and place orders for delivery from their favorite restaurants, offering a convenient and hassle-free way to enjoy meals from the comfort of their own homes or workplaces.",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  )),
              AspectRatio(
                aspectRatio: 4,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
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
