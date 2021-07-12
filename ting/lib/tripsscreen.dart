import 'package:flutter/material.dart';

class Tripsscreen extends StatefulWidget {
  const Tripsscreen({Key? key}) : super(key: key);

  @override
  _TripsscreenState createState() => _TripsscreenState();
}

class _TripsscreenState extends State<Tripsscreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Container myarticles(
      String imgValue,
      String heading,
    ) {
      return Container(
        margin: EdgeInsets.only(left: 10),
        width: size.width * .70,
        child: Card(
            child: Wrap(children: <Widget>[
          Image.network(
            imgValue,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(
              'Perfectly located appartment in city center',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
        ])),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(children: [
              Container(
                child: Container(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(25, 164, 153, 1)),
                            ),
                            Container(
                              width: 2,
                              height: MediaQuery.of(context).size.height * 0.46,
                              margin: EdgeInsets.only(top: 8),
                              color: Color.fromRGBO(25, 164, 153, 1),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 22),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Zurich',
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '10 days ago 8-9 Nov',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Container(
                                height: size.height * .35,
                                child:myarticles(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaGypE_vzsiu7OvtF3qFiY5rsdgGVNnjegnw&usqp=CAU',
                                  '',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              Container(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(25, 164, 153, 1)),
                        ),
                        Container(
                          width: 2,
                          height: MediaQuery.of(context).size.height * 0.46,
                          margin: EdgeInsets.only(top: 8),
                          color: Color.fromRGBO(25, 164, 153, 1),
                        ),
                      ]),
                      Container(
                        margin: EdgeInsets.only(left: 22),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Stockholm',
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '10 days ago 8-9 Nov',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Container(
                                height: size.height * .35,
                                child: myarticles(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaGypE_vzsiu7OvtF3qFiY5rsdgGVNnjegnw&usqp=CAU',
                                  '',
                                ),
                              ),
                            ]),
                      ),
                    ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
