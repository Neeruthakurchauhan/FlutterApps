import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MaterialApp(
     home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Ball(),
        appBar: AppBar( backgroundColor: Colors.blue.shade700,
        title: Text("Ask me anything")),
      backgroundColor: Colors.blue,

    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
            print('ball number: $ballNumber');
          });
        },
        child: Image.asset("images/ball$ballNumber.png"),
      )
    );
  }
}

