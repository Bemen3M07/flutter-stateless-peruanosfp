import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 400,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('This is a resource string.'),
                SizedBox(height: 20),
                Image(
                  image: AssetImage('assets/descarga.jpg'),
                  width: 200,
                  height: 200,
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}
