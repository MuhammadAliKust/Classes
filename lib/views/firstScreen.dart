import 'package:flutter/material.dart';
import 'package:resturant_owner/views/secondScreen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Text("Go to Second Screen by Push"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Text("Go to Second Screen by Push Replacement"),
            ),
          ],
        ),
      ),
    );
  }
}
