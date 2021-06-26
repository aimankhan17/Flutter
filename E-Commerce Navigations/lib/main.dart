  


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
        title: Text(
          'Ecom App UI ',
          style: TextStyle(color: Colors.black),
          ),
        backgroundColor: Colors.white,
           actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications), color: Colors.black,)
          ],
      ),
      
      body: Home(),
    );
  }
}