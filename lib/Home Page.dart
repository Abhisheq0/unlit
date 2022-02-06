import 'package:flutter/material.dart';
import 'package:unlit/Contribute Page.dart';
import 'package:unlit/Reward%20Page.dart';
import 'package:unlit/Tutorial%20Page.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        title: const Center(
          child: Text(
              'UNLIT'
          ),
        ),
      ),
      body: SafeArea(
        child: Column (
          children:  [
            //Contribute Button
            FlatButton(

              onPressed: () {
                print('B1 pressed');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context){
                        return ContributePage();
                      }
                  ),
                );

              },
              child: Container(
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Contribute',
                  style: TextStyle(fontSize: 20.0),

                ),
              ),
              margin: const EdgeInsets.all(20.0),
              color: Colors.blueGrey[700],
              width: 150.0,
              height: 50.0,
            ),

            ),
            //Tutorial Page Button
            FlatButton(

              onPressed: () {
                print('B2 pressed');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context){
                        return TutorialPage();
                      }
                  ),
                );

              },
              child: Container(
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Tutorial',
                    style: TextStyle(fontSize: 20.0),

                  ),
                ),
                margin: const EdgeInsets.all(20.0),
                color: Colors.blueGrey[700],
                width: 150.0,
                height: 50.0,
              ),

            ),
            FlatButton(

              onPressed: () {
                print('B1 pressed');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context){
                        return RewardPage();
                      }
                  ),
                );

              },
              child: Container(
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Reward',
                    style: TextStyle(fontSize: 20.0),

                  ),
                ),
                margin: const EdgeInsets.all(20.0),
                color: Colors.blueGrey[700],
                width: 150.0,
                height: 50.0,
              ),

            ),




          ],
        ),
      ),
    );
  }
}