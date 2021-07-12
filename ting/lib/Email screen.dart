import 'package:flutter/material.dart';

import 'Birthday screen.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  bool _value = false;

  void _onChanged(bool value) {
    setState(() {
      _value = value;
    });
  }

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
                'And, your email?',
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
                labelText: "EMAIL",
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(
              left: 20,
            ),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      width: MediaQuery.of(context).size.width * .70,
                      child: Text(
                        "I'd like to receive marketing and policy communications from Ting and it's partner ",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                   
                    Container(
                      child: Switch(
                          activeColor: Colors.white,
                          value: _value,
                          onChanged: (bool value) {
                            _onChanged(value);
                          }),
                    ),
                  ],
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
                       heroTag: 5,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  BirthdayScreen()),
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
