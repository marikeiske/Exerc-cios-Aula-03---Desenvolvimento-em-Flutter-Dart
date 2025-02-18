import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soma de Dois Números',
      home: SomaNumeros(),
    );
  }
}

class SomaNumeros extends StatefulWidget {
  @override
  SomaNumerosState createState() => SomaNumerosState();
}

class SomaNumerosState extends State<SomaNumeros> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  int _sum = 0;

  void _calculateSum() {
    int num1 = int.parse(_num1Controller.text);
    int num2 = int.parse(_num2Controller.text);
    setState(() {
      _sum = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soma de Dois Números'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Só fazemos soma!!!'),
            TextField(
              controller: _num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Digite o primeiro número',
              ),
            ),
            TextField(
              controller: _num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Digite o segundo número',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateSum,
              child: const Text('Calcular Soma'),
            ),
            const SizedBox(height: 20),
            Text(
              'A soma é $_sum',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}