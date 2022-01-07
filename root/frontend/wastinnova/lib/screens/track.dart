import 'package:flutter/material.dart';

class TrackingVan extends StatefulWidget {


  @override
  _TrackingVanState createState() => _TrackingVanState();
}

class _TrackingVanState extends State<TrackingVan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Icon(Icons.location_on, size: 50,),),
    );
  }
}