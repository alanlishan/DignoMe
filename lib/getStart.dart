import 'package:diagnome/checkNow.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Color.fromARGB(255, 55, 159, 100)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/getstarted.png',
                  width: 300.0,
                  height: 200.0,
                ),
              ),
            ),
              
          ElevatedButton(
              onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CheckNowPage()),
                  );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 190, 218, 191),
                minimumSize: Size(350.0, 50.0),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Color.fromARGB(255, 40, 123, 26),
                ),
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
