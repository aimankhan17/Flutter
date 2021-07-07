

import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
 debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xff99e8e0)),
      home: Scaffold(
        appBar: AppBar(
          title: Row(children: [Text("Ecom APP UI"), 
          Container(
           
              child: Icon(Icons.notifications,)),
          ],),
        ),
         
body: Home() 
      ),
    );
  
  }
}