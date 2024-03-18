import 'package:diagnome/imageUpload.dart';
import 'package:flutter/material.dart';

class CheckNowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Color.fromARGB(255, 100, 183, 135),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 100, 183, 135),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/checknow.png',
                width: 500.0,
                height: 300.0,
              ),
            ),
            SizedBox(height: 60.0),
            Text(
              'Hi....',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Container(
              width: 220.0,
              child: Center(
                child: Text(
                  'Lets Discover Clearer Skin with Our Advanced Technology',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 100.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhotoUploadPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 190, 218, 191),
                minimumSize: Size(350.0, 50.0),
              ),
              child: Text(
                'Check Now',
                style: TextStyle(
                  color: Color.fromARGB(255, 40, 123, 26),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
