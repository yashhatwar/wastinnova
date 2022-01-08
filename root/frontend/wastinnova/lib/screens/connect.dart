import 'package:flutter/material.dart';
import 'package:wastinnova/constants.dart';

class ConnectScreen extends StatelessWidget {
  const ConnectScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              children: [
                Text("Connect",
                textAlign: TextAlign.center,
                        style: kheaderstyle,),
              //   ListView(
              //     children: ideaDataList.map((idea) {
              //   return IdeaCard(
              //     authorName: idea['author'],
              //     ideaTitle: idea['title'],
              //     tags: idea['tags'],
              //     ideaContent: idea['body'],
              //     postedAt: idea['postedAt'],
              //   );
              // }).toList(),
              //   ),
              ],
              ),
            ),
          ]
        ),
        
      ),
    );
  }
}
