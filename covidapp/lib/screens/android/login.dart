import 'package:covidapp/screens/android/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de login'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        // color: Colors.red,
        padding: EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Dashboard()));
          },
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
