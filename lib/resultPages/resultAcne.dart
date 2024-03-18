import 'package:diagnome/appbar.dart';
import 'package:flutter/material.dart';

class ResultAcne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBarPage(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Final Result',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
          Center(
            child: Image.asset(
              'assets/face.png',
              width: 200.0,
              height: 200.0,
            ),
          ),
          SizedBox(height: 100.0),
          Text(
            'HAVE ACNE',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 129, 4, 4),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            width: 320.0,
            child: Center(
              child: Text(
                'The diagnostic results show that you have Acne Disease. Scroll down below to see more details about Acne.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 50.0),
          ElevatedButton(
            onPressed: () {
              // Handle submit button press
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 100, 183, 135),
              minimumSize: Size(200.0, 50.0),
            ),
            child: Text(
              'Retake',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}