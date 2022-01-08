import 'package:flutter/material.dart';

class DumpWaste extends StatefulWidget {
  const DumpWaste({ Key? key }) : super(key: key);

  @override
  _DumpWasteState createState() => _DumpWasteState();
}

class _DumpWasteState extends State<DumpWaste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container( 
          decoration:const  BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/DUMP.png'),
            fit: BoxFit.fill,
            ),),),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Select Dustbin Size",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight:FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text("Dump",style: TextStyle(fontSize: 18),),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(15),
                    primary: Color(0xFF37B943),
                    fixedSize: Size.fromWidth(300),
                  ),),
              ],
            ),
          )
        ],
      ),
      
    );
  }
}