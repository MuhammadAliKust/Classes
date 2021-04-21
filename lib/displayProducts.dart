import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_intro_class/helper.dart';
import 'package:flutter/material.dart';

class DisplayProducts extends StatefulWidget {
  @override
  _DisplayProductsState createState() => _DisplayProductsState();
}

class _DisplayProductsState extends State<DisplayProducts> {
  List<DocumentSnapshot> myProducts = [];

  ///function definition
  getProducts() {
    FirebaseFirestore.instance
        .collection('productData')
        .where('uid', isEqualTo: getUserID())
        .get()
        .then((value) => value.docs.map((product) {
              myProducts.add(product);
              setState(() {});
            }).toList());
  }

  @override
  void initState() {
    getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display Products"),
      ),
      body: myProducts.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: myProducts.length,
              itemBuilder: (context, i) {
                return Card(
                  child: ListTile(
                    isThreeLine: true,
                    title: Text(myProducts[i].data()['productName']),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(myProducts[i].data()['productPrice']),
                        Text(myProducts[i].data()['productDescription'])
                      ],
                    ),
                  ),
                );
              }),
    );
  }
}
