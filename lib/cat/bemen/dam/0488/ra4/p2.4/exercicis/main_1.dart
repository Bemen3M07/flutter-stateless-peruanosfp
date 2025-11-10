import 'package:flutter/material.dart'; // Importo Flutter y Material Design para usar widgets

void main() {
  runApp(const MaterialApp(
    home:
        BonDiaNitApp(), // Le digo a Flutter que mi pantalla principal es BonDiaNitApp
  ));
}

// Creo un StatefulWidget porque el texto cambiará al pulsar los botones
class BonDiaNitApp extends StatefulWidget {
  const BonDiaNitApp({super.key});

  @override
  State<BonDiaNitApp> createState() => _BonDiaNitAppState();
  // Aquí creo el estado de mi widget, donde estará la lógica y las variables que cambian
}

class _BonDiaNitAppState extends State<BonDiaNitApp> {
  String missatge =
      "Good ?!"; // Variable que contiene el texto que se mostrará en pantalla

  // Función que se llama cuando se pulsa el botón Morning
  void dirBonDia() {
    setState(() {
      missatge = "Good Morning !"; // Cambio el texto
    });
  }

  // Función que se llama cuando se pulsa el botón Night
  void dirBonaNit() {
    setState(() {
      missatge = "Good Night !"; // Cambio el texto
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Good App")), // Barra superior con el título
      body: Center(
        // Centro todo lo que hay dentro
        child: Column(
          // Columna para poner los widgets uno debajo del otro
          mainAxisAlignment: MainAxisAlignment.center, // Centrado vertical
          children: [
            Text(missatge,
                style: const TextStyle(
                    fontSize: 30)), // Aquí muestro el texto que cambia
            const SizedBox(height: 30),
            ElevatedButton(onPressed: dirBonDia, child: const Text("Morning")),
            // Botón que llama a dirBonDia cuando lo pulso
            const SizedBox(height: 10),
            ElevatedButton(onPressed: dirBonaNit, child: const Text("Night")),
            // Botón que llama a dirBonaNit cuando lo pulso
          ],
        ),
      ),
    );
  }
}
