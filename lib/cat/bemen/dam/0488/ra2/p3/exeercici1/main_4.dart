import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}
// Clase Contact
class Contact {
  // Clase que define un contacto con nombre completo, email y teléfono
  final String fullName;
  final String email;
  final String phone;

  Contact({required this.fullName, required this.email, required this.phone});
}

// Widget principal que muestra la información del contacto
class MainApp extends StatelessWidget {
  // Se crea un contacto de ejemplo
  final Contact contact = Contact(
    fullName: 'Peruano Pérez',
    email: 'peruano@example.com',
    phone: '934748474',
  );

  @override
  Widget build(BuildContext context) {
    // Construye la interfaz de la app
    return MaterialApp(
      home: Scaffold(
        // Scaffold proporciona la estructura básica de la pantalla
        body: Column(
          // Organiza los widgets uno debajo del otro
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen circular del contacto
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/descarga.jpg'),
            ),
            const SizedBox(height: 20),
            // Nombre del contacto
            Text(
              contact.fullName,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Recuadro que contiene el email y teléfono
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Muestra el email
                  Text(
                    'Email: ${contact.email}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  // Muestra el teléfono
                  Text(
                    'Phone: ${contact.phone}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
