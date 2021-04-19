import 'package:firebase_core/firebase_core.dart';
import 'package:first_intro_class/login.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
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
