import 'package:flutter/material.dart';

class Alexenderscreen extends StatefulWidget {
  const Alexenderscreen({Key? key}) : super(key: key);

  @override
  _AlexenderscreenState createState() => _AlexenderscreenState();
}

class _AlexenderscreenState extends State<Alexenderscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Colors.grey,
              height: 2.0,
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
          'Alexender',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.only(
                left: 15,
                right: 12,
                top: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.76,
                          padding: EdgeInsets.all(12),
                          height: 145,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(25, 164, 153, 1),
                              borderRadius: BorderRadius.all(Radius.circular(6))),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1508004526072-3be43a5005f6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          right: 12,
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1508004526072-3be43a5005f6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.76,
                        padding: EdgeInsets.all(12),
                        margin: EdgeInsets.only(
                          top: 18,
                        ),
                        height: 145,
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(242, 242, 243, 1),
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                      ),
                    ],
                  )),
                  SizedBox(height: 15),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.76,
                          padding: EdgeInsets.all(12),
                          height: 145,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(25, 164, 153, 1),
                              borderRadius: BorderRadius.all(Radius.circular(6))),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1508004526072-3be43a5005f6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          right: 12,
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1508004526072-3be43a5005f6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.76,
                        padding: EdgeInsets.all(12),
                        margin: EdgeInsets.only(
                          top: 18,
                        ),
                        height: 145,
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(242, 242, 243, 1),
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                      ),
                    ],
                  ))
                ],
              )),
        ),
      ),
    );
  }
}
