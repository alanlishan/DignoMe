import 'package:diagnome/appbar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(
       preferredSize: Size.fromHeight(kToolbarHeight),
       child: CustomAppBarPage(),
     ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/face.png'),
              ),
              SizedBox(height: 20.0),
              Text(
                'Alice',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Alice@gmail.com',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 50.0),
              ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 207, 209, 207),
                  minimumSize: Size(350.0, 50.0),
                ),
                child: Text(
                  'Account',
                  style: TextStyle(
                    color: Colors.black,
                  ),
              ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                 
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 207, 209, 207),
                  minimumSize: Size(350.0, 50.0),
                ),
                child: Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.black,
                  ),
              ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 207, 209, 207),
                  minimumSize: Size(350.0, 50.0),
                ),
                child: Text('Options',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 225, 73, 56),
                  minimumSize: Size(350.0, 50.0),
                ),
                child: Text(
                  'Log Out',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
