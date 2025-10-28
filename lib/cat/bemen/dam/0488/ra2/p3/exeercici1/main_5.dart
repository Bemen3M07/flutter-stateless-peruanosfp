import 'dart:math';
import 'package:flutter/material.dart';

// Punto de entrada de la app
void main() {
  // Lista de nombres de ejemplo
  final names = [
    "Ellison Curry","Briggs Willis","Alexa Murphy","Cameron Berry",
    "Annabelle Villarreal","Nikolai Wiley","Lauryn Morrow","Kyree Hardy",
    "Wells Wilson","Luna Foster","Kayden Taylor","Sofia Mann",
    "Nehemiah Randall","Christina Gordon","Karter Kramer","Hanna Morales",
    "Megan Delarosa","Osiris Johnson","Emma Atkins","Cason McKee",
    "Kori Walls","Larry Shepherd"
  ];

  // Texto fijo para todos los mensajes
  const body = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac vestibulum nunc.";

  final random = Random();

  // Genera 100 mensajes aleatorios combinando nombre + texto
  final messages = List.generate(100, (_) => [names[random.nextInt(names.length)], body]);

  // Ejecuta la app
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Mensajes Aleatorios")), // Barra superior
      body: ListView.builder(
        // Muestra los mensajes en lista infinita "simulada"
        itemBuilder: (_, i) => ListTile(
          title: Text(messages[i % messages.length][0], style: const TextStyle(fontWeight: FontWeight.bold)), // Nombre en negrita
          subtitle: Text(messages[i % messages.length][1]), // Texto del mensaje
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // Botón flotante sin funcionalidad
        child: const Icon(Icons.add), // Icono +
      ),
    ),
  ));
}





