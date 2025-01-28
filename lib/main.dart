import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Icon(Icons.star),
              ),
              Text(
                'Magic 8 Ball',
                style: TextStyle(fontFamily:'Pattaya',fontSize: 23.0)
              ),
            ],
          ),
        ),
        body: SafeArea(child: BallApp()),
      ),
    ),
  );
}


class BallApp extends StatefulWidget {
  const BallApp({super.key});

  @override
  State<BallApp> createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {

  int ballNum = 1;

  void changeBall(){
    var random = Random();
  setState(() {
    ballNum = random.nextInt(4) + 1;
  });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Ask a yes or no question',
            style: TextStyle(fontFamily:'Lexend',fontSize: 25.0),
          ),
          SizedBox(
            height: 350,
            width: 350,
            child: TextButton(onPressed: (){
              changeBall();
            },
              style: TextButton.styleFrom(
                minimumSize: Size(0, 0), // Minimize the pressable area
                padding: EdgeInsets.zero,
              ), // Remove padding
              child: Image.asset('images/ball$ballNum.png'),
              ),
            ),
        ],
      ),
    )
  ;}
}
