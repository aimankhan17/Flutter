import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  Container MyArticles(String imgValue, String heading, String Subheading) {
    return Container(
      width: 160,
      child: Card(
          child: Wrap(children: <Widget>[
        Image.network(
          imgValue,
          fit: BoxFit.cover,
        ),
        ListTile(
          title: Text(
            heading,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Text(Subheading),
        ),
      ])),
    );
  }

  Container Categories(String heading, String subheading, icons) {
    return Container(
      width: 200,
      child: Card(
          child: Wrap(children: <Widget>[
        ListTile(
          leading: Icon(
            icons,
            color: Colors.purple,
          ),
          title: Text(
            heading,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Text(subheading),
        ),
      ])),
    );
  }

  Container Names(String imgValue, String heading, String Subheading) {
    return Container(
      height: 400,
      width: 160,
      child: Card(
          child: Wrap(children: <Widget>[
        Image.network(
          imgValue,
          fit: BoxFit.cover,
        ),
        ListTile(
          title: Text(
            heading,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Text(Subheading),
        ),
      ])),
    );
  }
  @override
  Widget build(BuildContext context) {
 return Scaffold(
       body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Container(width:MediaQuery.of(context).size.width,
                child:  Text('Items', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
            
              ),
              Container(
                height: 200,
                child:
                    ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                  MyArticles(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaPaPhwyheziNskN3Q_NjNorlbJGHuhpy6ZA&usqp=CAU',
                    'Note 20',
                    '5.0 ( 23 reviews )',
                  ),
                  MyArticles(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfhNw6ceMZS9MVVjFoohN2tmoROhtV4Ll6-Q&usqp=CAU',
                    'Macbook Air',
                    '5.0 ( 23 reviews )',
                  ),
                  MyArticles(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbbaSkEcvcurtes8OwyTMdUIVxX_b7UNw9YA&usqp=CAU',
                    'Macbook Pro',
                    '5.0 ( 23 reviews )',
                  ),
                ]),
              ),
              
                Container(width:MediaQuery.of(context).size.width,
                  child:  Text('More Categories', textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, ),),
            
              ),
               SizedBox(height: 15),
              Container(
                height: 100,
                child:
                    ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                  Categories('Clothes', '5 items', Icons.local_drink),
                  Categories('Electronic', '20 items', Icons.bolt),
                  Categories('Households', '9 items', Icons.chalet),
                  Categories('Appliances', '5 items', Icons.bolt),
                  Categories('Others', '15 items', Icons.double_arrow),
                ]),
              ),
              SizedBox(height: 15),
                Container(width:MediaQuery.of(context).size.width,
                  child:  Text('Popular Items',textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
            
              ),
               SizedBox(height: 5),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  Names(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaPaPhwyheziNskN3Q_NjNorlbJGHuhpy6ZA&usqp=CAU',
                      'Note 20 ulra',
                      '5.0 (23 Reviews)'),
                  Names(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfhNw6ceMZS9MVVjFoohN2tmoROhtV4Ll6-Q&usqp=CAU',
                      'Macbook Pro',
                      '5.0 (23 reviews)'),
                  Names(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBL-yKIuu_0E1hAQZp9VKXc7b1DKk4XbDoKw&usqp=CAU',
                      'Iphone 12',
                      '5.0 (23 reviews)'),
                  Names(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbbaSkEcvcurtes8OwyTMdUIVxX_b7UNw9YA&usqp=CAU',
                      'Macbook Pro',
                      '5.0 (23 reviews)'),
                  Names(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfXeQGEuNxAHfSdaB1lDqD9flri0_v1FVqOQ&usqp=CAU',
                      'Samsung',
                      '5.0 (23 reviews)'),
                      Names('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_BXOvsAsDBOqueyFI5F6fEAbdkf_pRevtyw&usqp=CAU','Mouse',  '5.0 (23 reviews)'),
               
               Names('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTRhZp6beO0vjk-h8KcpPJjNEagHO9kJip6g&usqp=CAU', 'Iphone', '5.0 (23 reviews)'),
                      
                ],
              ),


              Container(
                
              ),
            ]),
            
          ),
        ),
      );
   
  }
}
