import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: Boll(),
    );
  }
}

class Boll extends StatefulWidget{
  @override 
  _BollState createState() => _BollState();
}

class _BollState extends State<Boll>{
  int bollNumber = 1;

  @override 
  Widget build(BuildContext context){
    return Center(
        child: FlatButton(
          onPressed: (){
            setState(() {
              bollNumber = Random().nextInt(5)+1;  //(0~4)+1 = 1~5
            });
          },
        child:Image.asset('images/ball$bollNumber.png'), 
      ),
    );
  }
}
