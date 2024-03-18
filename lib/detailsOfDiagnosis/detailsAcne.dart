import 'package:diagnome/appbar.dart';
import 'package:flutter/material.dart';

class DetailAcne extends StatelessWidget {
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
              'Details of Acne',
              style: TextStyle(
                color:  Colors.green,
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
          Center(
            child: Image.asset(
              'assets/detail.png',
              width: 200.0,
              height: 200.0,
            ),
          ),
          SizedBox(height: 100.0),
          Text(
            'Acne 30%',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 129, 4, 4),
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'White Heads 20%',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 129, 4, 4),
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'Black Heads 10%',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 129, 4, 4),
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
              'Acne Treatment',
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