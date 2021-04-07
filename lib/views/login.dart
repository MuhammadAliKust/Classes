import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (val) =>
                        val.isEmpty ? "Email cannot be empty" : null,
                  ),
                  TextFormField(
                    validator: (val) => val.length < 6
                        ? "Password length should be more than 6 chars."
                        : null,
                  ),
                  RaisedButton(
                    onPressed: () {
                      if (!_formKey.currentState.validate()) {
                        return;
                      }
                    },
                    child: Text("Login"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
