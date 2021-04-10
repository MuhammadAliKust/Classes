import 'package:flutter/material.dart';
import 'package:resturant_owner/views/firstScreen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Pop Screen"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstScreen()));
              },
              child: Text("Go to First Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
