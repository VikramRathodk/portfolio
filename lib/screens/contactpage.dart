import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

import '../widgets/drawer.dart';
import '../widgets/myappBar.dart';

class ContactMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: MyAppBar(
          title: 'Contact Me',
        ),
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("../assets/images/bg4.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //-------------------1st column--------------------------

                  const Column(
                    children: [
                      SizedBox(
                        width: 400,
                        child: Text(
                          "Got a problem to solve?",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily:
                                'Inter,ui-sans-serif,system-ui,-apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,Noto Sans,sans-serif,"Apple Color Emoji","Segoe UI Emoji",Segoe UI Symbol,"Noto Color Emoji',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 400,
                        child: Text(
                          "Get your space suit ready and tell me \nyour ideas to develop your dream website.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Helvetica',
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 85, 81, 81)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 400,
                        child: Text(
                          "rathodvikramk@gmail.com",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  //-------------------2nd column--------------------------
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            ContactFormInput(
                                label: "Name", hintText: "Your Name"),
                            ContactFormInput(
                                label: "Email", hintText: "Your Email"),
                            ContactFormInput(
                                label: "Message", hintText: "Your Message"),
                          ],
                        ),
                      ),
                      AnimatedButton(
                        height: 50,
                        width: 250,
                        text: 'Send Message',
                        isReverse: true,
                        selectedTextColor: Colors.black,
                        transitionType: TransitionType.TOP_CENTER_ROUNDER,
                        animationDuration: Duration(seconds: 1),
                        backgroundColor: Colors.black,
                        borderColor: Colors.white,
                        borderRadius: 20,
                        borderWidth: 2,
                        onPress: () {
                          Future.delayed(Duration(seconds: 1), () {
                            _submitRequest();
                          });
                          _submitRequest();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitRequest() {}
}

class ContactFormInput extends StatelessWidget {
  final String label;
  final String hintText;

  ContactFormInput({required this.label, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: SizedBox(
        width: 500,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: label,
              hintText: hintText,
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
