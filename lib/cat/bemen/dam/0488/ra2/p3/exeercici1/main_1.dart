import 'package:flutter/material.dart';

// Punto de entrada de la app
void main() {
  runApp(const MainApp()); // Ejecuta la app con MainApp
}

// Widget principal de la app
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold( // Pantalla básica
        body: Center( // Centra el contenido
          child: Text('Hello World !'), // Muestra un texto
        ),
      ),
    );
  }
}

