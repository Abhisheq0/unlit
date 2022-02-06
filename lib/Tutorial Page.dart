import 'dart:ui';

import 'package:flutter/material.dart';
class TutorialPage extends StatefulWidget {

  const TutorialPage({Key? key}) : super(key: key);

  @override
  _TutorialPageState createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  int i=1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        title: const Center(
          child: Text(
              'TUTORIAL'
          ),
        ),
      ),

      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.white,
                tooltip: 'Increase volume by 10',
                onPressed: () {
                  setState(() {
                    if(i>1) {
                      i = i - 1;
                    }
                  });
                  print('B1 pressed');

                },
              ),
              Image(
                image: AssetImage('images/$i.png'),
                height: 400.0,
                width: 275.0,
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                tooltip: 'Increase volume by 10',
                onPressed: () {
                  setState(() {
                    if(i<3) {
                      i = i + 1;
                    }
                  });
                  print('B2 pressed');
                },
              ),
            ],
          )
      ),
    );
  }
}
