
import 'package:diagnome/appbar.dart';
import 'package:flutter/material.dart';

class PhotoUploadPage extends StatelessWidget {
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
              'Capture/Upload Your Photo',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Handle camera button press
            },
            child: Center(
              child: Image.asset(
                'assets/camera.png',
                width: 200.0,
                height: 200.0,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          InkWell(
            onTap: () {
              // Handle photo button press
            },
            child: Center(
              child: Image.asset(
                'assets/photo.png',
                width: 200.0,
                height: 200.0,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Handle submit button press
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 100, 183, 135),
              minimumSize: Size(200.0, 50.0),
            ),
            child: Text(
              'Submit',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
