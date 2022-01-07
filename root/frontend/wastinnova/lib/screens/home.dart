import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          Container( 
          decoration:const  BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/homebg.png'),
            fit: BoxFit.fill,
            ),),),
          Center(
            child: Column(
              children: [
                Image.asset('assets/useme.png'),
                Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {}, 
                      child: Icon(Icons.location_on),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        
                      ),
                      ),
                    ElevatedButton(
                      onPressed: () {}, 
                    child: SvgIcon('assets/dumpwaste.svg',color: Colors.black,)),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {}, 
                      child: Icon(Icons.pie_chart_sharp),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        
                      ),),
                    ElevatedButton(
                      onPressed: () {}, 
                      child: Icon(Icons.bar_chart),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        
                      ),),
                  ],
                ),
              ],
              ),
          ),
        ],
      ),
    );
  }
}