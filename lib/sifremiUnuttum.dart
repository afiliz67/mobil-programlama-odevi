import 'package:flutter/material.dart';

class sifremiUnuttum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.red),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              child: Text("Gönder"),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    ));
  }
}
