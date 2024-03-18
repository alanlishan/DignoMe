
// google_maps_flutter: ^2.6.0  add this to pubspec.yamal


// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class ShowMapPage extends StatefulWidget {
//   @override
//   _ShowMapPageState createState() => _ShowMapPageState();
// }

// class _ShowMapPageState extends State<ShowMapPage> {
//   late GoogleMapController mapController;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Show Map'),
//       ),
//       body: GoogleMap(
//         onMapCreated: (controller) {
//           setState(() {
//             mapController = controller;
//           });
//         },
//         initialCameraPosition: CameraPosition(
//           target: LatLng(6.9271, 79.8612), 
//           zoom: 12.0,
//         ),
//       ),
//     );
//   }
// }
