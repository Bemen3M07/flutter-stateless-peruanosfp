import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  // Clase principal de la app que no tiene estado
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Construye la interfaz de la app
    return MaterialApp(
      // MaterialApp aplica el diseño de Material Design
      home: Scaffold(
        // Scaffold proporciona la estructura básica de la pantalla
        body: Center(
          // Centra el contenido en la pantalla
          child: Padding(
            // Agrega espacio alrededor del contenido
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              // Coloca los widgets uno debajo del otro
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome!',
                  // Texto grande y en negrita
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                // Espacio vertical
                Text(
                  'Start learning now',
                  // Texto más pequeño y de color gris
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  // Botón que ocupa todo el ancho
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción al presionar el botón de login
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: const Text('Login'),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  // Botón con borde, ocupa todo el ancho
                  child: OutlinedButton(
                    onPressed: () {
                      // Acción al presionar el botón de register
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: const Text('Register'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}