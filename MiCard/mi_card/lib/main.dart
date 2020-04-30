import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors. teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[              
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/nakano.jpg'),
              ),
              Text(
                'Nakano',
                style: TextStyle(
                  fontFamily: 'Pacifico',  //英語しか使えません(設定がないため)
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '中野家五姉妹はいつも仲良し！',
                style: TextStyle(
                  fontFamily: 'M PLUS',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'ex) nakano@gotobun.com',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'M PLUS',
                      fontSize: 20.0,
                    ),
                  ),
                ), 
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                  ),
                  title: Text(
                    '+ 0120 999 999',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'M PLUS',
                      fontSize: 20.0,
                    ),                      
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.vpn_key,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'in password',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'M PLUS',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}