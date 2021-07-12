import 'package:flutter/material.dart';

import 'login screen.dart';
import 'signup screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(25, 164, 153, 1),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Welcome to Ting',
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
                  height: 50,
                  width: MediaQuery.of(context).size.width * .90,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => LoginScreen()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Color.fromRGBO(25, 164, 153, 1),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      primary: Color.fromRGBO(25, 164, 153, 1),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.0),
                      ),
                    ),
                  )),
              SizedBox(height: 8),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * .90,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => SignupScreen()),
                      );
                    },
                    child: Text(
                      'Signup',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Color.fromRGBO(25, 164, 153, 1),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      primary: Color.fromRGBO(25, 164, 153, 1),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26.0),
                      ),
                    )),
              )
            ]));
  }
}
