import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.teal[300]),
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('LoginPage')),
          ),
          backgroundColor: Colors.cyan[100],
          body: Container(
              decoration: BoxDecoration(
              image: DecorationImage(
              image: NetworkImage("https://aws1.discourse-cdn.com/elastic/original/3X/9/0/90df22ab443662d632838fd82f6ea38b2cba025a.png"),
              fit: BoxFit.cover,
            )),
            child: Column(children: [
              SizedBox(
                height: 60,
              ),
              Container(
                width: 250,
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 250,
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
               Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.pink[200],
                      child: Text('Login'),
                      onPressed: () {
                       
                      },
                    )),
              
              SizedBox(
                height: 10,
              ),
              Container(
                child: Center(child: Text('Do you have an account?')),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Center(
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ))
            ]),
          ),
        ));
  }
}
