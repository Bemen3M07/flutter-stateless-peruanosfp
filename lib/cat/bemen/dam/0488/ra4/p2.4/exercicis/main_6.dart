import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingListPage(), // Aquí cridem el stateful widget
    );
  }
}

// STATEFUL WIDGET
class ShoppingListPage extends StatefulWidget {
  @override
  _ShoppingListPageState createState() => _ShoppingListPageState();
}

class _ShoppingListPageState extends State<ShoppingListPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();

  List<Map<String, String>> items = [];

  void _addItem() {
    String name = _nameController.text.trim();
    String quantity = _quantityController.text.trim();

    if (name.isNotEmpty && quantity.isNotEmpty) {
      setState(() {
        items.add({"name": name, "quantity": quantity});
      });

      _nameController.clear();
      _quantityController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Llista de la Compra")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: "Nom del producte",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _quantityController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Quantitat",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _addItem,
              child: const Text("Afegir"),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(items[index]["name"]!),
                    subtitle: Text("Quantitat: ${items[index]["quantity"]}"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}