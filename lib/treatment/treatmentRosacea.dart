import 'package:diagnome/appbar.dart';
import 'package:flutter/material.dart';


class TreatmentRosaceaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBarPage(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Image.asset(
                'assets/treatment.png',
                width: 200.0,
                height: 200.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Avoiding Rosacea',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListView(
                  children: [
                    ListTile(
                      title: Text('Avoid harsh scrubs or abrasive cleansers that may irritate the skin'),
                    ),
                    ListTile(
                      title: Text('Use a sunscreen with an SPF of 30 or higher every day.'),
                    ),
                    ListTile(
                      title: Text('Avoid hot drinks and spicy foods, as they may trigger flushing or blushing.'),
                    ),
                    ListTile(
                      title: Text('Avoid alcohol, as it may trigger flushing or blushing.'),
                    ),
                    
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                 
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 100, 183, 135),
                minimumSize: Size(double.infinity, 50.0),
              ),
              child: Text(
                'Save PDF',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}