import 'dart:math';
import 'package:flutter/material.dart';

// Punto de entrada principal de la aplicación
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

  // Texto fijo que se mostrará en todos los mensajes
  const body = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac vestibulum nunc.";

  // Objeto para generar números aleatorios
  final random = Random();

  // Genera una lista de 100 mensajes aleatorios
  // Cada mensaje es una lista con: [nombre, texto]
  final messages = List.generate(100, (_) => [names[random.nextInt(names.length)], body]);

  // Ejecuta la aplicación
  runApp(MaterialApp(
    home: Scaffold(
      // Barra superior de navegación (AppBar)
      appBar: AppBar(
        title: const Text("Mensajes Aleatorios"), // Título del AppBar
        actions: const [
          Icon(Icons.search),      // Ícono de búsqueda (sin funcionalidad)
          SizedBox(width: 16),     // Espaciado entre íconos
          Icon(Icons.more_vert),   // Ícono de menú (los 3 puntos)
          SizedBox(width: 8),      // Pequeño margen a la derecha
        ],
      ),

      // Cuerpo principal de la app
      body: ListView.builder(
        // Construye dinámicamente los elementos de la lista
        itemBuilder: (_, i) => ListTile(
          // Muestra el nombre en negrita
          title: Text(
            messages[i % messages.length][0],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          // Muestra el texto del mensaje debajo del nombre
          subtitle: Text(messages[i % messages.length][1]),
        ),
      ),

      // Botón flotante (Floating Action Button)
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // Sin funcionalidad
        child: const Icon(Icons.add), // Ícono de suma "+"
      ),

      // Barra de navegación inferior (BottomNavigationBar)
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),     // Ícono de inicio
            label: 'Inicio',            // Texto del botón
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),  // Ícono de mensajes
            label: 'Mensajes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),   // Ícono de perfil
            label: 'Perfil',
          ),
        ],
        currentIndex: 0, // Elemento seleccionado (solo visual)
        onTap: (_) {},   // No hace nada al tocar (sin funcionalidad)
      ),
    ),
  ));
}