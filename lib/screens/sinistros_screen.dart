import 'package:flutter/material.dart';

class SinistrosScreen extends StatelessWidget {
  const SinistrosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sinistros = [
      {'cliente': 'Carlos Silva', 'tipo': 'Acidente', 'data': '01/04/2025'},
      {'cliente': 'Ana Costa', 'tipo': 'Roubo', 'data': '03/04/2025'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Sinistros')),
      body: ListView.builder(
        itemCount: sinistros.length,
        itemBuilder: (context, index) {
          final sinistro = sinistros[index];
          return ListTile(
            leading: const Icon(Icons.warning),
            title: Text('${sinistro['cliente']}'),
            subtitle: Text('${sinistro['tipo']} • ${sinistro['data']}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
