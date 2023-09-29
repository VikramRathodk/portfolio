import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  MyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color.fromARGB(255, 102, 31, 31),
        ),
        width: 100, 
        height: 100,
        child: Center(
          child: Text(
            'Your Content',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
