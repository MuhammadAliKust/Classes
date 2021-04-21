import 'package:first_intro_class/addProduct.dart';
import 'package:first_intro_class/displayProducts.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard "),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddProduct()));
            },
            child: Text("Add Products"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DisplayProducts()));
            },
            child: Text("Display Products"),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("Delete Product"),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("Edit Product"),
          ),
        ],
      ),
    );
  }
}
