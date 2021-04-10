import 'package:flutter/material.dart';
import 'package:resturant_owner/constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: MyAppColors.appColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Stack(
              overflow: Overflow.visible,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 150,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text("Name"), Text("Ali")],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text("Email"), Text("xyz@mail.com")],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Phone Number"),
                              Text("0300-1234567")
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text("Name"), Text("Ali")],
                          ),
                          Divider(),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  top: -50,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage('assets/images/user.png'),
                        ),
                        Positioned.fill(
                            child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 19,
                            ),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyAppColors.appColor,
                            ),
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
