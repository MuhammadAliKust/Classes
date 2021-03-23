import 'package:flutter/material.dart';

void main() {
  runApp(MyName());
}

class MyName extends StatefulWidget {
  @override
  _MyNameState createState() => _MyNameState();
}

class _MyNameState extends State<MyName> {
  String myName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Name"),
        ),
        body: Column(
          children: [
            TextField(
              onSubmitted: (val) {
                setState(() {
                  myName = val;
                });
              },
            ),
            Text("My Name is $myName")
          ],
        ),
      ),
    );
  }
}

///Create an app and do the following
///1: Print Name, Reg No, Class
///Print Name using onChanged
///Print RegNo and Class onSubmit
