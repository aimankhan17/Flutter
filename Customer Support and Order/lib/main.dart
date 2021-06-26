import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
   
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
         leading: Icon(Icons.arrow_back_ios, color: Colors.black,),
        title: Text(
          'Customer Support',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      
      body: Home(),
    );
  }
}