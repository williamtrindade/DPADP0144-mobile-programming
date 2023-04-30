import 'dart:ffi';

import 'package:flutter/material.dart';

class Imc extends StatefulWidget {
  const Imc({Key? key}) : super(key: key);

  @override
  State<Imc> createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  double _altura = 175;
  double _peso = 60;
  double _imc = 0;
  String _msg = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calcular IMC'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Altura ${_altura.toStringAsFixed(2)} cm",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w400
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 16, right: 14),
                child: Slider(
                  min: 30.0,
                  max: 250.0,
                  value: _altura,
                  onChanged: (altura) {
                    setState(() {
                      _altura = altura;
                    });
                  }
                ),
              ),
              Text(
                "Peso ${_peso.toStringAsFixed(2)} kg",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w400
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 16, right: 14),
                child: Slider(
                    min: 30.0,
                    max: 250.0,
                    value: _peso,
                    onChanged: (peso) {
                      setState(() {
                        _peso = peso;
                      });
                    }
                ),
              ),
              Container(
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.favorite, color: Colors.red,),
                  label: const Text('Calcular'),
                  onPressed: () {
                    double imc = _peso / ((_altura/100) * (_altura/100));
                    String msg = "";
                    if (imc < 18.5) {
                      msg = 'Abaixo do peso normal';
                    }
                    else if (imc < 24.9) {
                      msg = 'Peso normal';
                    }
                    else if (imc < 29.9) {
                      msg = 'Excesso de peso';
                    }
                    else if (imc < 34.9) {
                      msg = 'Obesidade classe I';
                    }
                    else if (imc < 39.9) {
                      msg = 'Obesidade classe II (severa)';
                    }
                    else {
                      msg = 'Obesidade classe III (mórbida)';
                    }
                    setState(() {
                      _imc = imc;
                      _msg = msg;
                    });
                  },
                ),
              ),
              Text(_msg),
              Text(_imc.toStringAsFixed(2))
            ],
          ),
        )
      ),
    );
  }
}
