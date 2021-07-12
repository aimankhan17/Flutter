import 'package:flutter/material.dart';

class Currenciesscreen extends StatefulWidget {
  const Currenciesscreen({Key? key}) : super(key: key);

  @override
  _CurrenciesscreenState createState() => _CurrenciesscreenState();
}

class _CurrenciesscreenState extends State<Currenciesscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Colors.grey,
              height: 1.0,
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
          'Currencies',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: ListTile(
                  title: Text(
                    'Euro',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * .93,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Container(
                child: ListTile(
                  title: Text(
                    'Dollar',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * .93,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Container(
                child: ListTile(
                  title: Text(
                    'PKR',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(25, 164, 153, 1),
                    ),
                  ),
                ),
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * .93,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Container(
                child: ListTile(
                  title: Text(
                    'CHN',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * .93,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Container(
                child: ListTile(
                  title: Text(
                    'INR',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * .93,
                child: Divider(
                  color: Colors.grey,
                ),
              ),SizedBox(height:300),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: EdgeInsets.only(right: 20),
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    backgroundColor:Color.fromRGBO(25, 164, 153, 1),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
