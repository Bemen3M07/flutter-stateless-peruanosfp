import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}
// Clase Contact
class Contact {
  final String fullName;
  final String email;
  final String phone;

  Contact({required this.fullName, required this.email, required this.phone});
}

// Widget que muestra el contacto
class MainApp extends StatelessWidget {
  final Contact contact = Contact(
    fullName: 'Peruano Pérez',
    email: 'peruano@example.com',
    phone: '934748474',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen circular
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
        // Recuadro con email y teléfono
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
              Text(
                'Email: ${contact.email}',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
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