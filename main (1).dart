import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de Área',
      home: AreaCalculator(),
    );
  }
}

class AreaCalculator extends StatefulWidget {
  @override
  _AreaCalculatorState createState() => _AreaCalculatorState();
}

class _AreaCalculatorState extends State<AreaCalculator> {
  final TextEditingController _sideController = TextEditingController();
  final TextEditingController _lengthController = TextEditingController();
  final TextEditingController _widthController = TextEditingController();
  final TextEditingController _baseController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  String _squareArea = '';
  String _rectangleArea = '';
  String _triangleArea = '';

  void _calculateSquareArea() {
    double side = double.parse(_sideController.text);
    setState(() {
      _squareArea = 'Área do quadrado: ${side * side}';
    });
  }

  void _calculateRectangleArea() {
    double length = double.parse(_lengthController.text);
    double width = double.parse(_widthController.text);
    setState(() {
      _rectangleArea = 'Área do retângulo: ${length * width}';
    });
  }

  void _calculateTriangleArea() {
    double base = double.parse(_baseController.text);
    double height = double.parse(_heightController.text);
    setState(() {
      _triangleArea = 'Área do triângulo: ${(base * height) / 2}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Área'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Cálculo da área do quadrado
            TextField(
              controller: _sideController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Lado do quadrado'),
            ),
            ElevatedButton(
              onPressed: _calculateSquareArea,
              child: Text('Calcular Área do Quadrado'),
            ),
            Text(_squareArea),

            // Cálculo da área do retângulo
            TextField(
              controller: _lengthController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Comprimento do retângulo'),
            ),
            TextField(
              controller: _widthController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Largura do retângulo'),
            ),
            ElevatedButton(
              onPressed: _calculateRectangleArea,
              child: Text('Calcular Área do Retângulo'),
            ),
            Text(_rectangleArea),

            // Cálculo da área do triângulo
            TextField(
              controller: _baseController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Base do triângulo'),
            ),
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Altura do triângulo'),
            ),
            ElevatedButton(
              onPressed: _calculateTriangleArea,
              child: Text('Calcular Área do Triângulo'),
            ),
            Text(_triangleArea),
          ],
        ),
      ),
    );
  }
}