import 'package:flutter/material.dart';

class ApolicesScreen extends StatelessWidget {
  const ApolicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final apolices = [
      {'numero': 'A001', 'cliente': 'Carlos Silva', 'tipo': 'Vida'},
      {'numero': 'A002', 'cliente': 'Ana Costa', 'tipo': 'Carro'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Apólices')),
      body: ListView.builder(
        itemCount: apolices.length,
        itemBuilder: (context, index) {
          final apolice = apolices[index];
          return ListTile(
            leading: const Icon(Icons.assignment),
            title: Text('${apolice['cliente']}'),
            subtitle: Text('Tipo: ${apolice['tipo']} - Nº: ${apolice['numero']}'),
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
