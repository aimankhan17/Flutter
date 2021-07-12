import 'package:flutter/material.dart';

class Inboxscreen extends StatefulWidget {
  const Inboxscreen({Key? key}) : super(key: key);

  @override
  _InboxscreenState createState() => _InboxscreenState();
}

class _InboxscreenState extends State<Inboxscreen> {
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
                'Inbox',
                style: TextStyle(
                    fontSize: 38,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
         SizedBox(height: 10),
            Container(padding: EdgeInsets.only(left: 12, right: 12),
              child: 
             Align(
               alignment: Alignment.topLeft,
              
               child: Text(
               
                  'You have no unread messages',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
             ),
            ),
            SizedBox(height: 15),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1508004526072-3be43a5005f6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
            ),
            title: Text(
              'Christina',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              'You have no unread messages',
            ),
            trailing: Text('8 Nov 2018'),
          ),
         Container(
                    margin: EdgeInsets.only(left: 8, bottom: 12),
                    width: MediaQuery.of(context).size.width * .90,
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1508004526072-3be43a5005f6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
            ),
            title: Text(
              'Christina',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              'You have no unread messages',
            ),
            trailing: Text('8 Nov 2018'),
          ),
          Container(
                    margin: EdgeInsets.only(left: 8, bottom: 12),
                    width: MediaQuery.of(context).size.width * .90,
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
        ],
      ),
    ));
  }
}
