import 'package:flutter/material.dart'; // Importo Flutter y Material Design para usar widgets
import 'dart:math'; // Importo la librería math para generar números aleatorios

void main() {
  runApp(const MiApp()); // Lanza la app y llama al widget principal MiApp
}

// Creo un widget sin estado (Stateless) porque la estructura principal no cambia
class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insertar Numeros APP', // Título de la app
      home: InsertarNumero(), // Página principal de la app
    );
  }
}

// Creo un widget con estado (Stateful) porque el número y los intentos cambian
class InsertarNumero extends StatefulWidget {
  @override
  _InsertarNumeroState createState() => _InsertarNumeroState();
  // Crea el estado del widget, donde estará la lógica y las variables que cambian
}

class _InsertarNumeroState extends State<InsertarNumero> {
  final TextEditingController _controlador = TextEditingController();
  // Controlador para el TextField donde el usuario introduce un número

  int contador = 0; // Contador de intentos del usuario
  late int numeroSecreto; // Número secreto que hay que adivinar

  @override
  void initState() {
    super.initState();
    numeroSecreto = Random().nextInt(100) + 1;
    // Genera un número secreto aleatorio entre 1 y 100 al iniciar la app
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insertar Numeros APP'), // Barra superior con el título
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Espacio alrededor del contenido
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centra todo verticalmente
          children: [
            Text(
              'Adivina el número secreto',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              // Texto principal que indica la acción al usuario
            ),

            SizedBox(height: 10), // Espacio entre el texto y el campo de texto

            Center(
              child: SizedBox(
                width: 250, // Ancho fijo para el TextField
                child: TextField(
                  controller:
                      _controlador, // Conecta el TextField con el controlador
                  keyboardType: TextInputType.number, // Solo permite números
                  decoration: InputDecoration(
                    labelText:
                        'Introduce un número', // Texto que aparece dentro del TextField
                    border:
                        OutlineInputBorder(), // Borde alrededor del TextField
                  ),
                ),
              ),
            ),

            SizedBox(height: 20), // Espacio antes del botón

            ElevatedButton(
              onPressed: () {
                contador++; // Aumenta el contador cada vez que el usuario pulsa el botón

                int numeroUsuario = int.tryParse(_controlador.text) ?? 0;
                // Convierte el texto introducido a número, si falla toma 0

                String mensaje; // Variable para el mensaje que se mostrará

                if (numeroUsuario < numeroSecreto) {
                  mensaje =
                      'El número es mayor'; // Si el número es menor, indica que hay que subir
                } else if (numeroUsuario > numeroSecreto) {
                  mensaje =
                      'El número es menor'; // Si el número es mayor, indica que hay que bajar
                } else {
                  mensaje = '¡Has acertado!\nIntentos: $contador';
                  // Si acierta, muestra mensaje con el número de intentos
                }

                // Muestra un SnackBar con el mensaje
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      mensaje,
                      textAlign:
                          TextAlign.center, // Centra el texto en el SnackBar
                    ),
                    duration: Duration(
                        seconds: 1), // Duración que se muestra el SnackBar
                  ),
                );
              },
              child: Text('Comprobar'), // Texto del botón
            ),
          ],
        ),
      ),
    );
  }
}
