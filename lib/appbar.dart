import 'package:flutter/material.dart';

class CustomAppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        title: Text(''),
        actions: [
          IconButton(
            onPressed: () {
              // Handle right icon press
            },
            icon: Image.asset(
              'assets/homeTop.png',
              width: 64.0,
              height: 64.0,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            // Handle left icon press
          },
          icon: Image.asset(
            'assets/profileTop.png',
            width: 34.0,
            height: 34.0,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
    );
  }
}
