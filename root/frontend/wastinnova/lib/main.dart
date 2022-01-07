import 'package:flutter/material.dart';
import 'package:wastinnova/screens/home.dart';
import 'package:wastinnova/screens/track.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wastinnova',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'home',
      routes: {
        'home':(context) =>Home(),
        'tracking':(context)=>TrackingVan(),
        'stats':(context)=>TrackingVan(),
        'connect':(context)=>TrackingVan(),
        },
    );
  }
}