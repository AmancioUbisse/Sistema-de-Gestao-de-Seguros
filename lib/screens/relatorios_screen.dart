import 'package:flutter/material.dart';

class RelatoriosScreen extends StatelessWidget {
  const RelatoriosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final relatorios = [
      'Relatório de Clientes',
      'Relatório de Apólices',
      'Relatório de Sinistros',
      'Relatório Financeiro',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Relatórios')),
      body: ListView.builder(
        itemCount: relatorios.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.insert_drive_file),
            title: Text(relatorios[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Aqui você pode abrir um PDF, exportar ou mostrar gráfico
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Abrindo ${relatorios[index]}')),
              );
            },
          );
        },
      ),
    );
  }
}
