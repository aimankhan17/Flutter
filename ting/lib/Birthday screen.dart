import 'package:flutter/material.dart';

import 'Password screen.dart';

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({Key? key}) : super(key: key);

  @override
  _BirthdayScreenState createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
  @override
  DateTime? date = DateTime.now();

  Widget build(BuildContext context) {
   
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.calendar_today_rounded),
        onPressed: () {
          pickDateDialogue(context);
        },
      ),
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
                'When is your birthday?',
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
         
           width: MediaQuery.of(context).size.width * .90 ,
                child: Text(
                  "You must be atleast 18 years old to use Ting. \n Other people won't see your Birthday",
                  style: TextStyle(
                    color: Colors.white,fontSize: 16
                  ),
                ),
          ),
         
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: 
              
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    (date.toString()),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ),
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                    padding: EdgeInsets.only(right: 20),
                    child: FloatingActionButton(
                       heroTag: 4,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  PasswordScreen()),
                        );
                      },
                      child: Icon(
                        Icons.navigate_next,
                        color: Color.fromRGBO(25, 164, 153, 1),
                      ),
                      backgroundColor: Colors.white,
                    )),
              ),
            ]),
      
    );
  }


  void pickDateDialogue(BuildContext context) {
  showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(DateTime.now().year - 2, DateTime.now().month - 2,
        DateTime.now().day - 10),
    lastDate: DateTime(DateTime.now().year + 2, DateTime.now().month + 2,
        DateTime.now().day + 10),
  ).then((datePicked) {
    setState(() {
    
      date = datePicked;
    });
  });
}
}




