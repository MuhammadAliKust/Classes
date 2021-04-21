import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_intro_class/helper.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    getUserID();
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Product"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(labelText: "Product Name"),
          ),
          TextFormField(
            controller: _priceController,
            decoration: InputDecoration(labelText: "Product Price"),
          ),
          TextFormField(
            controller: _descriptionController,
            decoration: InputDecoration(labelText: "Product Description"),
          ),
          RaisedButton(
            onPressed: () {
              FirebaseFirestore.instance.collection('productData').add({
                'productName': _nameController.text,
                'productPrice': _priceController.text,
                'productDescription': _descriptionController.text,
                'uid': getUserID()
              });
            },
            child: Text("Add Product"),
          ),
        ],
      ),
    );
  }
}
