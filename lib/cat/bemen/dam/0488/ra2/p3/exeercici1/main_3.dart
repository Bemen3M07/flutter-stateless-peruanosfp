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
      home: Scaffold( // Pantalla básica de la app
        body: Center( // Centra el contenido en la pantalla
          child: SizedBox( // Caja con tamaño fijo
            width: 400,
            height: 400,
            child: Column( // Coloca widgets uno debajo de otro
              mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
              children: [
                Text('This is a resource string.'), // Texto en pantalla
                SizedBox(height: 20), // Espacio entre el texto y la imagen
                Image(
                  image: AssetImage('assets/descarga.jpg'), // Imagen desde assets
                  width: 200, // Ancho de la imagen
                  height: 200, // Alto de la imagen
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}

