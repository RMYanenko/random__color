import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class NextScrin extends StatefulWidget {
  // const name({Key key}) : super(key: key);

  @override
  _NextScrinState createState() => _NextScrinState();
}

class _NextScrinState extends State<NextScrin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              child: TypewriterAnimatedTextKit(
                  pause: Duration(milliseconds: 1500),
                  onTap: () {
                    print("Tap Event");
                  },
                  text: [
                    "How are you?",
                    "Design first, then code",
                    "Do not patch bugs out, rewrite them",
                    "Do not test bugs out, design them out",
                  ],
                  textStyle: TextStyle(
                      fontSize: 30.0, fontFamily: "Agne", color: Colors.white),
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
