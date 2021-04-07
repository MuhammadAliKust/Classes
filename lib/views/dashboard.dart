import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.blur_on), onPressed: () {}),
        actions: [
          IconButton(icon: Icon(Icons.notifications_none), onPressed: () {}),
          IconButton(icon: Icon(Icons.exit_to_app_outlined), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "My Products",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Card(
                      elevation: 4,
                      child: ListTile(
                        title: Text("Red Apple"),
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage('assets/images/apple.png'),
                        ),
                        subtitle: Text("Price: \$12"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.edit,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
