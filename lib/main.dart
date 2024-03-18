import 'package:diagnome/chat.dart';
import 'package:diagnome/detailsOfDiagnosis/detailsAcne.dart';
import 'package:diagnome/detailsOfDiagnosis/detailsRosacea.dart';
import 'package:diagnome/profile.dart';
import 'package:diagnome/resultPages/resultAcne.dart';
import 'package:diagnome/resultPages/resultCongratulation.dart';
import 'package:diagnome/resultPages/resultRosacea.dart';
import 'package:diagnome/thankYou.dart';
import 'package:diagnome/treatment/treatmentAcne.dart';
import 'package:diagnome/treatment/treatmentRosacea.dart';
import 'package:diagnome/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
     
      ),
      home: WelcomePage(),
      
     
    );
  }
}

