import 'package:flutter/material.dart';

import 'AlexenderScreen.dart';

class Profilescreen extends StatefulWidget {
  @override
  _ProfilescreenState createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 12, right: 12),
                alignment: Alignment.topLeft,
                child: Text(
                  'Aiman Khan',
                  style: TextStyle(
                      fontSize: 38,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'View and Edit your profile',
                    style: TextStyle(color: Colors.grey),
                  )),
              SizedBox(
                height: 15,
              ),
              Container(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  alignment: Alignment.topLeft,
                  child: Text(
                    '1 step left',
                    style: TextStyle(color: Colors.grey),
                  )),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 65,
                    height: 65,
                    padding: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(6.0),
                        bottomLeft: const Radius.circular(6.0),
                      ),
                    ),
                  ),
                  Container(
                    width: 65,
                    height: 65,
                    color: Colors.red,
                  ),
                  Container(
                    width: 65,
                    height: 65,
                    color: Colors.red,
                  ),
                  Container(
                    width: 65,
                    height: 65,
                    color: Colors.red,
                  ),
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(218, 218, 218, 1),
                        borderRadius: BorderRadius.only(
                          topRight: const Radius.circular(6.0),
                          bottomRight: const Radius.circular(6.0),
                        )),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Container(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'The last step for fun one',
                    style: TextStyle(color: Colors.grey),
                  )),
              ListTile(
                title: Text(
                  'Setting',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Alexenderscreen()),
                    );
                  },
                  icon: Icon(Icons.settings),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .93,
                height: 1,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Container(
                child: ListTile(
                  title: Text(
                    'Sign-Out',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings_backup_restore),
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
