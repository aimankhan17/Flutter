import 'dart:ui';

import 'package:flutter/material.dart';

import 'Currencies_screen.dart';
import 'profile_screen.dart';

class Settingsscreen extends StatefulWidget {
  const Settingsscreen({Key? key}) : super(key: key);

  @override
  _SettingsscreenState createState() => _SettingsscreenState();
}

class _SettingsscreenState extends State<Settingsscreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Colors.grey,
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(4.0)),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
            color: Colors.black,
            size: 36,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            
              ListTile(
                title: Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Profilescreen()),
                        );},
                  color: Color.fromRGBO(25, 164, 153, 1),
                  icon: Icon(Icons.swap_vertical_circle),
                ),
              ),
              Container(
              
                width: MediaQuery.of(context).size.width * .93,
                height: 1,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
             Container(child: ListTile(
                title: Text(
                  'Currency',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                     Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Currenciesscreen()),
                        );
                  },
                  color: Color.fromRGBO(25, 164, 153, 1),
                  icon: Icon(Icons.monetization_on),
                ),
              ),
             ),
              Container(
               
                height: 1,
                width: MediaQuery.of(context).size.width * .93,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
            ]),
      ),
    );
  }
}
