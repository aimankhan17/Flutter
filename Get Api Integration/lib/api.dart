import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
class Api extends StatefulWidget {
  const Api({ Key? key }) : super(key: key);

  @override
  _ApiState createState() => _ApiState();
}

class _ApiState extends State<Api> {

getuser() async{
  var users = [];
  var response = await http.get(Uri.https('jsonplaceholder.typicode.com', 'users/1/todos'));
  var jsonData = jsonDecode(response.body);

for(var i in jsonData){

UserModel user = UserModel(i['userId'], i['id'], i['title'],i['completed']);
users.add(user);

}
return users;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:FutureBuilder(future:getuser() ,
      builder: (BuildContext context,AsyncSnapshot snapshot){
        if( snapshot.data == null){
          return Container(child: Text('Nothing in Api'),);
        }
        else {
          return ListView.builder(
                                itemCount: snapshot.data.length,
                        itemBuilder: (context, i) {
                         
            return ListTile(
              title: Text(snapshot.data[i].title),

              );
            
           
          }, );
        }
      } ,)
      
    );
  }
}

class UserModel{
  var userId;
  var id;
  var title;
  var completed;

 UserModel(this.userId,this.id,this.title,this.completed);

}