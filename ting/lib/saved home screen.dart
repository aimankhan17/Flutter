import 'package:flutter/material.dart';
import 'package:ting/explore%20screen.dart';

import 'Saved_screen.dart';

class Savedhomescreen extends StatefulWidget {
  const Savedhomescreen({Key? key}) : super(key: key);

  @override
  _SavedhomescreenState createState() => _SavedhomescreenState();
}

class _SavedhomescreenState extends State<Savedhomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
            Container(
             padding: EdgeInsets.only(left: 12, right: 12),
              alignment: Alignment.topLeft,
               child: GestureDetector(onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Savedscreen()),
                    );},
              child: Text(
                'Saved Homes',
                style: TextStyle(
                    fontSize: 38,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),  ),
            ),
           
            SizedBox(height: 17),
            Container(padding: EdgeInsets.only(left: 12, right: 12),
              child: 
             Align(
               alignment: Alignment.topLeft,
              
               child: Text(
               
                  'Nothing saved yet',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
             ),
            ),
            SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width * (0.93),

            
              alignment: Alignment.centerLeft,
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                child: Text('Start exploring'),
                onPressed: () {  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Explorescreen()),
                        );
                      },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(25, 164, 153, 1),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ),
            ),
          ])
    );
  }
}
