import 'package:flutter/material.dart';

class PagamentosScreen extends StatelessWidget {
  const PagamentosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pagamentos = [
      {'cliente': 'Carlos Silva', 'valor': 'MZN 3.500', 'data': '10/04/2025'},
      {'cliente': 'Ana Costa', 'valor': 'MZN 2.000', 'data': '15/04/2025'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Pagamentos')),
      body: ListView.builder(
        itemCount: pagamentos.length,
        itemBuilder: (context, index) {
          final pagamento = pagamentos[index];
          return ListTile(
            leading: const Icon(Icons.payment),
            title: Text('${pagamento['cliente']}'),
            subtitle: Text('${pagamento['data']} • ${pagamento['valor']}'),
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
