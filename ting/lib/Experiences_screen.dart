import 'package:flutter/material.dart';

class Experiencesscreen extends StatefulWidget {
  
  @override
  _ExperiencesscreenState createState() => _ExperiencesscreenState();
}

class _ExperiencesscreenState extends State<Experiencesscreen> {
  @override
   Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:  SingleChildScrollView(child: SafeArea(child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                 Container(
               padding: EdgeInsets.only(left: 12, right: 12),
              alignment: Alignment.topLeft,
              child: Text(
                'Experiences',
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,),
              ),
            ),
            SizedBox(height: 10,),

              Container(
               
        child: Padding(
                padding: EdgeInsets.only(left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
         
               
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReqblsZ1QgujMCEbyAY5uTyQQ7-bexJY5fKg&usqp=CAU",
                fit: BoxFit.cover,
                
                height: size.height * .35,
                width: size.width * .92,
                
              ),
            ]),
      ),
      ),
      SizedBox(height:10),
            Container(
               padding: EdgeInsets.only(left: 12, right: 12),
              alignment: Alignment.topLeft,
              child: Text(
                'Restraunts',
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,),
              ),
            ),
            SizedBox(height: 10,),
            Container(
     padding: EdgeInsets.only(left: 12, right: 12),
      child: Card(
          child: Wrap(children: <Widget>[
        Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt4oeCm1oJ5pMGQBTg88yH3arIye9wAlBh_Q&usqp=CAU",
                fit: BoxFit.cover,
                height: size.height * .35,
                width: size.width * .92,
        
        ) ])),
  
    ),SizedBox(height: 8,),
      Container(
     padding: EdgeInsets.only(left: 12, right: 12),
      child: Card(
          child: Wrap(children: <Widget>[
        Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_5W90V1fZIUsKK0_WfMajpUXrBa9JByQfgQ&usqp=CAU",
                fit: BoxFit.cover,
                height: size.height * .35,
                width: size.width * .92,
        
        ),
    
   
       
      ])),
    ),
              ]
      
    ),),),);
  }
}