import 'package:flutter/material.dart';

class MinhaApp extends StatelessWidget {
  const MinhaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Encomodei a Renata"),
          backgroundColor: Colors.blue,
        ),
        body: const Contador(),
      ),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);
  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color.fromRGBO(155, 31, 255, 0.6823529411764706),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Contador: $_contador",
            style: const TextStyle(
              color: Colors.red,
              fontSize: 40,
              fontWeight: FontWeight.w400
            ),
          ),
          ElevatedButton.icon(
              onPressed: () {
                debugPrint("Clicou");
                setState(() {
                  _contador++;
                });
              },
              icon: const Icon(
                  Icons.favorite,
                  color: Color.fromRGBO(255, 255, 255, 1.0),
              ),
              label: const Text("Add")
          ),
          ElevatedButton.icon(
              onPressed: () {
                debugPrint("Zerou");
                setState(() {
                  _contador = 0;
                });
              },
              icon: const Icon(Icons.favorite, color: Colors.white,),
              label: const Text("Zero")
          ),
        ],
      ),
    );
  }
}
