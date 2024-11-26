import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('8 balls: Make decisions now!'),
          ),
          body: ballpage(),
        ),
      ),
    );

class ballpage extends StatefulWidget {
  const ballpage({super.key});

  @override
  State<ballpage> createState() => _ballpageState();
}

class _ballpageState extends State<ballpage> {
  int random = 1;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        child: TextButton(onPressed: (){
          setState(() {
          random = Random().nextInt(4) + 1;
        });
        }, child: Image.asset('images/ball$random.png'),),
      ),
    );
  }
}
