import 'package:flutter/material.dart';
import 'package:tela_login/screens/cadastro.dart';

class LoginScreen extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Login instagram",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 60.0, bottom: 10),
                  width: 300,
                  height: 150,
                  child: Image.asset('assets/images/img.png'),
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Entre com email válido email@servico.com'),
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 15, bottom: 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Senha',
                        hintText: 'Entre com a senha'),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    print('debug_forgetpass');
                  },
                  child: const Text(
                    'Esqueci minha senha!',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  )),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),

                      );
                    }
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (valor) => const Cadastro())
                    );
                  },
                  child: const Text(
                    'Crie sua conta',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}