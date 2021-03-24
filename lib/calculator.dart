import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String num1;
  String num2;
  int result;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: Column(
          children: [
            TextField(
              onChanged: (val) {
                setState(() {
                  num1 = val;
                });
              },
            ),
            TextField(
              onChanged: (val) {
                setState(() {
                  num2 = val;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            FittedBox(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        result = int.parse(num1) + int.parse(num2);
                      });
                    },
                    child: Text("Add + "),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text("Sub - "),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text("Multiply * "),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text("Divide / "),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 160,
              decoration: BoxDecoration(color: Colors.grey[400]),
              child: Center(child: Text(result.toString())),
            )
          ],
        ),
      ),
    );
  }
}
