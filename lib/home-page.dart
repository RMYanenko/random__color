import 'dart:math';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:random_color/screen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Random _random = new Random();
  Color _color = Color(0xFFFFFFFF);

  void randomColor() {
    setState(() {
      _color = Color(_random.nextInt(0xffffffff));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: InkWell(
        onTap: randomColor,
        child: Container(
          decoration: new BoxDecoration(color: _color),
          child: Center(
            child: SizedBox(
              child: FadeAnimatedTextKit(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NextScrin(),
                      ),
                    );
                  },
                  text: ["Hey!", "Hey there!!!"],
                  textStyle:
                      TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                  alignment:
                      AlignmentDirectional.topStart // or Alignment.topLeft
                  ),
            ),
          ),
        ),
      ),
    );
  }
}

// onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => NextScrin(),
//                       ),
//                     );
//                   },
//                   text: ['Hey there'],
