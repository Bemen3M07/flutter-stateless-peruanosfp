import 'package:flutter/material.dart'; // Importa Flutter y Material Design

void main() {
  runApp(const MiApp()); // Lanza la app
}

// Widget principal de la app
class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saludar APP',
      home: SaludarPage(), // Página principal
    );
  }
}

// Página principal donde el usuario introduce su nombre
class SaludarPage extends StatefulWidget {
  @override
  _SaludarPageState createState() => _SaludarPageState();
}

class _SaludarPageState extends State<SaludarPage> {
  final TextEditingController _nameController =
      TextEditingController(); // Controla el TextField

  // Función que muestra el dialog con el saludo
  void _saludar() {
    String nombre = _nameController.text;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Bienvenido'),
        content: Text('¡Hola, $nombre!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saludar APP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Introduce tu nombre',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saludar, // Llama a la función al pulsar
              child: Text('Saludar'),
            ),
          ],
        ),
      ),
    );
  }
}
