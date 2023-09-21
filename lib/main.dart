import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Maior ou Menor",
      theme: ThemeData(
        primarySwatch:  Colors.pink,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
final numeroController1 = TextEditingController();
final numeroController2 = TextEditingController();

HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.all(12),
              child: 
              TextField(
                controller: numeroController1,
                decoration: const InputDecoration(
                  labelText: "Número 1:"
                ),
              ),
            ),
             Container(
              margin: const EdgeInsets.all(12),
              child: 
              TextField(
                controller: numeroController2,
                decoration: const InputDecoration(
                  labelText: "Número 2:"
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => maior(context),
              child: const Text("Maior"),
             )
          ],
        ),
      ),
    );
  }

  void maior(BuildContext context) {
    final numero1 = int.parse(numeroController1.text);
    final numero2 = int.parse(numeroController2.text);

    dynamic message;

    if(numero1 < numero2){
       message = "O maior número é $numero2";
    }
    else if(numero1 > numero2){
       message = "O maior número é $numero1";
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
 }
}

void main() => runApp(const Aplicacao());