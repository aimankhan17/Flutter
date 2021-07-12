import 'package:flutter/material.dart';

import 'Bottom _screen.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
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
                'Create a password',
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
            width: MediaQuery.of(context).size.width * .90,
            child: Text(
              "Your password must include atleast one symbol and be 8 or more characters long.",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          SizedBox(height: 10),
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
                  heroTag: 6,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              BottomNavigation()),
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
