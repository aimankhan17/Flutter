import 'package:flutter/material.dart';

class Explorescreen extends StatefulWidget {
  @override
  _ExplorescreenState createState() => _ExplorescreenState();
}

class _ExplorescreenState extends State<Explorescreen> {
  Container MyArticles(
    String imgValue,
    String heading,
  ) {
    return Container(
        padding: EdgeInsets.only(left: 12.0),
        width: 160,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                imgValue,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1),
              ListTile(
                title: Center(
                  child: Text(
                    heading,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19,),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Container Categories(
    String imgValue,
    String heading,
  ) {
    return Container(
     
        width: 180,
        child: SingleChildScrollView(
          child: Column(
            children: [ Container(
                 padding: EdgeInsets.only(left: 12.0),
                 child: 
              Image.network(
                imgValue,
                fit: BoxFit.cover,
              ),),
             
            Container(child:  ListTile(
                title: Container(
               
                  width: MediaQuery.of(context).size.width * (0.73),
                  child: Text(
                    'ENTIRE APARTMENT- 1 BEDROOM',
                    style: TextStyle(
                      fontSize:8.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Explore',
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 120,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        MyArticles(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShVN2YRvL9CmEyiK7c7UG6g-sgrVBhsAPgFw&usqp=CAU',
                          'Homes',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        MyArticles(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-0kQGzwPmEWCaxP96zUYsIHVjqvAoNncukQ&usqp=CAU',
                            'Experiences'),
                        SizedBox(
                          width: 8,
                        ),
                        MyArticles(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOgxlP12RCOIXRSKX-wtY3HJ0S4-wfnTmzxQ&usqp=CAU',
                          'Adventure',
                        ),
                      ]),
                ),
                SizedBox(height: 17),
                Container(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Zurich',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 170,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Categories(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4pZD01fPc4875FHEDlN7DlnQbCjvCxD3vnw&usqp=CAU',
                            ''),
                      ]),
                ),
                Container(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Centric studio with\nroof top terrace ",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '85 CHF per person',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 55),
                Container(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Stockholm',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4pZD01fPc4875FHEDlN7DlnQbCjvCxD3vnw&usqp=CAU',
                        width: 160,
                        height: 170,
                      )),
                ),
              ]),
        ),
      ),
    );
  }
}
