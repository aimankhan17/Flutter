import 'package:flutter/material.dart';

import 'signup screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
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
                labelText: "EMAIL",
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
                labelText: "PASSWORD",
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
                padding: EdgeInsets.only(right: 20),
                child: FloatingActionButton(
                  heroTag: 2,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => SignupScreen()),
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
