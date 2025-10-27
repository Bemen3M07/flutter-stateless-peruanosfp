import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final names = [
      "Ellison Curry","Briggs Willis","Alexa Murphy","Cameron Berry",
      "Annabelle Villarreal","Nikolai Wiley","Lauryn Morrow","Kyree Hardy",
      "Wells Wilson","Luna Foster","Kayden Taylor","Sofia Mann",
      "Nehemiah Randall","Christina Gordon","Karter Kramer","Hanna Morales",
      "Megan Delarosa","Osiris Johnson","Emma Atkins","Cason McKee",
      "Kori Walls","Larry Shepherd"
    ];
    const body = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac vestibulum nunc.";
    final random = Random();
    final messages = List.generate(100, (_) => [names[random.nextInt(names.length)], body]);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Mensajes Aleatorios')),
        body: ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(messages[index][0], style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(messages[index][1]),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}




