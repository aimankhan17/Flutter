import 'package:flutter/material.dart';

import 'Email screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.navigate_before,
              size: 36,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Color.fromRGBO(25, 164, 153, 1),
          elevation: 0,
        ),
        backgroundColor: Color.fromRGBO(25, 164, 153, 1),
        body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Container(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'What is your name?',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: "FIRST NAME",
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "LAST NAME",
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
            SizedBox(height: 20,),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                    padding: EdgeInsets.only(right: 20),
                    child: FloatingActionButton(
                       heroTag: 3,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => EmailScreen()),
                        );
                      },
                      child: Icon(
                        Icons.navigate_next,
                        color: Color.fromRGBO(25, 164, 153, 1),
                      ),
                      backgroundColor: Colors.white,
                    )),
              ),
            ],
          ),
        );
  }
}
