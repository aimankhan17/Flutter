import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Date(),
    );
  }
}

class Date extends StatefulWidget {
  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  DateTime? date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.calendar_today_rounded),
        onPressed: (){
          pickDateDialogue(context);
        },
      ),
      body: Container(
        child: Center(
          child: Text(date.toString()),
        ),
      ),
    );
  }

  pickDateDialogue(BuildContext context)  {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate:DateTime(
          DateTime.now().year-2, DateTime.now().month -2 , DateTime.now().day-10),
      lastDate: DateTime(
          DateTime.now().year+2, DateTime.now().month + 2, DateTime.now().day+10),
    ).then((datePicked){
      setState(() {
        date= datePicked;
      });
    });

  }

}

