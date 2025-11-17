import 'package:flutter/material.dart'; // Importo Flutter y Material Design para usar widgets

void main() {
  runApp(const MiApp()); // Lanza la app y llama al widget principal MiApp
}

// Creo un widget sin estado (Stateless) porque la estructura principal no cambia
class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Partido de Futbol APP', // Título de la app
      home: Partido(), // Página principal donde estará la lógica del partido
    );
  }
}

// Creo un widget con estado (Stateful) porque los goles cambiarán durante la ejecución
class Partido extends StatefulWidget {
  @override
  _PartidoState createState() => _PartidoState();
  // Crea el estado del widget, donde estarán las variables y funciones que cambian
}

class _PartidoState extends State<Partido> {
  int golesEquipoA = 0; // Contador de goles del equipo A
  int golesEquipoB = 0; // Contador de goles del equipo B

  // Función que incrementa los goles del equipo A
  void anotarGolEquipoA() {
    setState(() {
      golesEquipoA++;
    });
  }

  // Función que incrementa los goles del equipo B
  void anotarGolEquipoB() {
    setState(() {
      golesEquipoB++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Partido de Futbol APP'), // Barra superior con el título
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Espacio alrededor del contenido
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // Distribuye uniformemente los widgets de los dos equipos
            children: [
              // Equipo A
              Column(
                mainAxisSize: MainAxisSize
                    .min, // Ajusta el tamaño de la columna al contenido
                children: [
                  Text(
                    'A: $golesEquipoA',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    // Muestra los goles del equipo A
                  ),
                  SizedBox(height: 10), // Espacio entre el texto y el botón
                  ElevatedButton(
                    onPressed:
                        anotarGolEquipoA, // Llama a la función que suma un gol
                    child: Text('Score A'), // Texto del botón
                  ),
                ],
              ),
              // Equipo B
              Column(
                mainAxisSize: MainAxisSize
                    .min, // Ajusta el tamaño de la columna al contenido
                children: [
                  Text(
                    'B: $golesEquipoB',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    // Muestra los goles del equipo B
                  ),
                  SizedBox(height: 10), // Espacio entre el texto y el botón
                  ElevatedButton(
                    onPressed:
                        anotarGolEquipoB, // Llama a la función que suma un gol
                    child: Text('Score B'), // Texto del botón
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
