// ignore_for_file: prefer_const_constructors

import 'package:avatar_glow/avatar_glow.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_vikram/widgets/drawer.dart';
import 'package:portfolio_vikram/widgets/footer.dart';
import 'package:portfolio_vikram/widgets/myappBar.dart';
import 'package:portfolio_vikram/widgets/sizeBox_container.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../screens/project.dart';

class DesktopScafold extends StatefulWidget {
  const DesktopScafold({super.key});

  @override
  State<DesktopScafold> createState() => _DesktopScafoldState();
}

class _DesktopScafoldState extends State<DesktopScafold> {
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Horizon',
    );
    List<String> imageList = [
      '../assets/images/profile.jpg',
      '../assets/images/profile2.jpg',
      '../assets/images/profile3.jpg',
      '../assets/images/profile4.jpg',
    ];
    final Uri _url = Uri.parse(
        'https://vikramresume.s3.ap-south-1.amazonaws.com/Vikram_Rathod_MCA_24.pdf');

    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: MyAppBar(
          title: 'Vikram Rathod',
        ),
      ),
      drawerEnableOpenDragGesture: true,
      drawer: MyDrawer(),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("../assets/images/bg4.jpg"), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Container(
                          //   height: 600,
                          //   width: 400,
                          //   decoration: BoxDecoration(
                          //     shape: BoxShape.rectangle,
                          //   ),
                          //   child: CircleAvatar(
                          //     radius: 110,
                          //     backgroundImage:
                          //         AssetImage('../assets/images/profile.jpg'),
                          //   ),
                          // ),
                          /* AvatarGlow(
                            endRadius:
                                200.0, // Adjust the endRadius for the desired glow size
                            child: Material(
                              elevation: 8.0,
                              shape: CircleBorder(),
                              child: CircleAvatar(
                                backgroundColor: Colors.grey[100],
                                radius:
                                    100.0, // Adjust the radius to control the size of the circle
                                child: Image.asset(
                                  'assets/images/profile.jpg', // Specify the correct image path
                                  fit: BoxFit.cover,

                                  height:
                                      160, // Adjust the height to make the image larger
                                ),
                              ),
                            ),
                          )
                          */
                          SizedBox(
                            height: 550,
                            width: 450,
                            child: FanCarouselImageSlider(
                              expandedCloseBtnDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0)),
                              imagesLink: imageList,
                              isAssets: false,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Wrap(
                            children: [
                              Text(
                                "Hi, I am Vikram",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 50.0,
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              AnimatedTextKit(
                                animatedTexts: [
                                  ColorizeAnimatedText(
                                    'Flutter Developer',
                                    textStyle: colorizeTextStyle,
                                    colors: colorizeColors,
                                  ),
                                  ColorizeAnimatedText(
                                    'React Developer',
                                    textStyle: colorizeTextStyle,
                                    colors: colorizeColors,
                                  ),
                                  ColorizeAnimatedText(
                                    'NodeJs Developer',
                                    textStyle: colorizeTextStyle,
                                    colors: colorizeColors,
                                  ),
                                ],
                                isRepeatingAnimation: true,
                                onTap: () {
                                  print("Tap Event");
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 25.0),
                          Container(
                            width: 600.0,
                            child: Text(
                              "A dedicated and enthusiastic student currently pursuing a Master of Computer Applications (MCA) degree at Sardar Patel Institute Of Technology Mumbai. With a passion for technology and a strong desire to make a meaningful impact in the world of software engineering, I am committed to honing my skills and knowledge in this dynamic field.",
                              strutStyle: StrutStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 30,
                              ),
                            ),
                          ),
                          SizedBox(height: 40.0),
                          AnimatedButton(
                            height: 70,
                            width: 200,
                            text: 'Download Resume',
                            isReverse: true,
                            selectedTextColor: Colors.black,
                            transitionType: TransitionType.TOP_CENTER_ROUNDER,
                            animationDuration: Duration(seconds: 1),
                            backgroundColor: Colors.black,
                            borderColor: Colors.white,
                            borderRadius: 50,
                            borderWidth: 2,
                            onPress: () {
                              _launchUrl();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 15.0),
                  //   child: Text(
                  //     "Projects",
                  //     strutStyle: StrutStyle(
                  //       fontFamily: 'Montserrat',
                  //       fontSize: 30.0,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 10.0,
                  ),
                  // Projects(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      "Skills",
                      strutStyle: StrutStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        padding: EdgeInsets.all(10),
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return Image(
                              height: 50,
                              width: 50,
                              image: AssetImage("../assets/images/java.png"));
                        },
                      ),
                    ),
                  ),
                  Container(
                    child: Footer(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(
      //     label: "home",
      //     icon: Icon(Icons.home),
      //   ),
      //   BottomNavigationBarItem(
      //     label: "PROfi",
      //     icon: Icon(Icons.home),
      //   ),
      // ]),
    );
  }
}
