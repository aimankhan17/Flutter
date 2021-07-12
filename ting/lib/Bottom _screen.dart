import 'package:flutter/material.dart';
import 'package:ting/explore%20screen.dart';
import 'package:ting/inbox%20screen.dart';
import 'package:ting/saved%20home%20screen.dart';
import 'package:ting/settings%20screen.dart';
import 'package:ting/tripsscreen.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentTab = 0;

  Widget currentScreen = Explorescreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(bucket: PageStorageBucket(), child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        // notchMargin: 50,
        color: Colors.white,
        child: Container(
          height: 60,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen = Explorescreen();
                        currentTab = 0;
                      });
                    },
                    child: Icon(Icons.search,
                        color: currentTab == 0 ? Colors.blue : Colors.grey)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Savedhomescreen();
                        currentTab = 1;
                      });
                    },
                    child: Icon(Icons.favorite,
                        color: currentTab == 1 ? Colors.blue : Colors.grey)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Tripsscreen();
                        currentTab = 2;
                      });
                    },
                    child: Icon(Icons.airplanemode_active,
                        color: currentTab == 2 ? Colors.blue : Colors.grey)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Inboxscreen();
                        currentTab = 3;
                      });
                    },
                    child: Icon(Icons.inbox,
                        color: currentTab == 3 ? Colors.blue : Colors.grey)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Settingsscreen();
                        currentTab = 4;
                      });
                    },
                    child: Icon(Icons.person,
                        color: currentTab == 4 ? Colors.blue : Colors.grey)),
              ]),
        ),
      ),
    );
  }
}
