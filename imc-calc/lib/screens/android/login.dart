import 'package:flutter/material.dart';

import 'imc.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Mobile',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: SingleChildScrollView(
          child:Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  // color: Colors.pink,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 70),
                  child: const FlutterLogo(size: 80,),
                ),
                Container(
                  // color: Colors.lightGreen,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80.0)
                      ),
                      labelText: 'Login'
                    ),
                  ),
                ),
                Container(
                  // color: Colors.lightGreen,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(80.0)
                        ),
                        labelText: 'Senha'
                    ),
                  ),
                ),
                Container(
                  // color: Colors.red,
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50)
                    ),
                    child: const Text('Login'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const Imc();
                      }));
                    },
                  )
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
