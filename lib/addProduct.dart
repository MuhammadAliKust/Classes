import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:first_intro_class/helper.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController _nameController = TextEditingController();

  TextEditingController _priceController = TextEditingController();

  TextEditingController _descriptionController = TextEditingController();

  File _file;

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
          InkWell(
            onTap: () {
              getFile();
            },

            ///Tenary Operators
            child: _file == null
                ? Text("Pick Image")
                : Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                        image: DecorationImage(
                            fit: BoxFit.cover, image: FileImage(_file))),
                  ),
          ),
          RaisedButton(
            onPressed: () {
              getUrl(context, file: _file).then((imgUrl) {
                FirebaseFirestore.instance.collection('productData').add({
                  'productName': _nameController.text,
                  'productPrice': _priceController.text,
                  'productDescription': _descriptionController.text,
                  'productImageUrl': imgUrl,
                  'uid': getUserID()
                });
              });
            },
            child: Text("Add Product"),
          ),
        ],
      ),
    );
  }

  ///Upload Posts Files
  Future<String> getUrl(BuildContext context, {File file}) async {
    String postFileUrl;
    try {
      Reference storageReference = FirebaseStorage.instance
          .ref()
          .child('backendClass/${file.path.split('/').last}');
      UploadTask uploadTask = storageReference.putFile(file);

      await uploadTask.whenComplete(() async {
        await storageReference.getDownloadURL().then((fileURL) {
          print("I am fileUrl $fileURL");
          postFileUrl = fileURL;
        });
      });
      return postFileUrl;
    } catch (e) {
      rethrow;
    }
  }

  ///Image Picker
  Future getFile() async {
    _file = await FilePicker.getFile();
    setState(() {
      if (_file != null) {
        _file = File(_file.path);
      } else {
        print('No image selected.');
      }
    });
  }
}
