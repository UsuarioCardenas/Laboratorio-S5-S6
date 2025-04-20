import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Calculadora(),
      ),
    ),
  ));
}

class Calculadora extends StatelessWidget {
  const Calculadora({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            width: double.infinity,
            color: Colors.black12,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.all(16),
            child: Text(
              "0",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
        
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(flex: 1, child: BotonCalculadora(texto: "C")),
              Expanded(flex: 1, child: BotonCalculadora(texto: "±")),
              Expanded(flex: 1, child: BotonCalculadora(texto: "%")),
              Expanded(flex: 1, child: BotonCalculadora(texto: "÷")),
            ],
          ),
        ),
        
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(flex: 1, child: BotonCalculadora(texto: "7")),
              Expanded(flex: 1, child: BotonCalculadora(texto: "8")),
              Expanded(flex: 1, child: BotonCalculadora(texto: "9")),
              Expanded(flex: 1, child: BotonCalculadora(texto: "×")),
            ],
          ),
        ),
        
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(flex: 1, child: BotonCalculadora(texto: "4")),
              Expanded(flex: 1, child: BotonCalculadora(texto: "5")),
              Expanded(flex: 1, child: BotonCalculadora(texto: "6")),
              Expanded(flex: 1, child: BotonCalculadora(texto: "-")),
            ],
          ),
        ),
        
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(flex: 1, child: BotonCalculadora(texto: "1")),
              Expanded(flex: 1, child: BotonCalculadora(texto: "2")),
              Expanded(flex: 1, child: BotonCalculadora(texto: "3")),
              Expanded(flex: 1, child: BotonCalculadora(texto: "+")),
            ],
          ),
        ),
        
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(flex: 2, child: BotonCalculadora(texto: "0")),
              Expanded(flex: 1, child: BotonCalculadora(texto: ".")),
              Expanded(flex: 1, child: BotonCalculadora(texto: "=")),
            ],
          ),
        ),
      ],
    );
  }
}

class BotonCalculadora extends StatelessWidget {
  final String texto;
  
  const BotonCalculadora({
    required this.texto,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: getColor(),
        borderRadius: BorderRadius.circular(4),
      ),
      alignment: Alignment.center,
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
  
  Color getColor() {
    if (texto == "C" || texto == "±" || texto == "%") {
      return Colors.grey;
    } else if (texto == "÷" || texto == "×" || texto == "-" || texto == "+" || texto == "=") {
      return Colors.green;
    } else {
      return Colors.grey.shade800;
    }
  }
}