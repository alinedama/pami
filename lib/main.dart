import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Atividade"),
                  Text("Avaliativa"),
              ],
            ),
            Column(
          children: const [
            Text("Aline"),
            Text("Brenda"),
            Text("Daniel"),
          ],
        ),
        Column(
          children: const[
            Text("2H3"),
          ],
        ),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const[
          Text("Agosto"),
          Text("2023"),
        ],
        ),
          ],
        ),
        
      ),
    );
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Atividade Avaliativa",
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: const HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());