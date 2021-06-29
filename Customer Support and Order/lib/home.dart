import 'package:flutter/material.dart';
import 'app.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              SizedBox(
                height: 40,
              ),
              page(
                "I'd like to know",
                "Details about my orders",
                 Color.fromRGBO(200, 144, 251, 1),
                Color.fromRGBO(241, 68, 128, 1)
              ),
              SizedBox(
                height: 15,
              ),
              page('Unfortunately', 'I have payment issues',
               Color.fromRGBO(149, 72, 176, 1),
                Color.fromRGBO(104, 133, 240, 1),),
              SizedBox(
                height: 15,
              ),
              page("More answers in", "frequently asked questions", 
              Color.fromRGBO(243, 191, 136, 1),
                Color.fromRGBO(251, 143, 152, 1)),
              ElevatedButton(
                child: Text("Next"),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(bottom: 10)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

Widget page(
  String title1,
  String title2,
  Color primaryColor,
  Color secondaryColor
) {
  return Container(
    width: 450,
    height: 150,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          primaryColor,
          secondaryColor,
        ],
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5),
          Text(
            title1,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 15),
          Text(
            title2,
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
      trailing:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        SizedBox(height: 20),
        Icon(Icons.arrow_forward_ios, color: Colors.white),
      ]),
    ),
  );
}
