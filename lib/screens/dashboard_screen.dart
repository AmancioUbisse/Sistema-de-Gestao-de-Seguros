import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  void _navegarPara(BuildContext context, String rota) {
    Navigator.pushNamed(context, rota);
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> opcoes = [
      {'titulo': 'Clientes', 'icone': Icons.person, 'rota': '/clientes'},
      {'titulo': 'Apólices', 'icone': Icons.assignment, 'rota': '/apolices'},
      {'titulo': 'Pagamentos', 'icone': Icons.payment, 'rota': '/pagamentos'},
      {'titulo': 'Sinistros', 'icone': Icons.warning, 'rota': '/sinistros'},
      {'titulo': 'Relatórios', 'icone': Icons.bar_chart, 'rota': '/relatorios'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: opcoes.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            final opcao = opcoes[index];
            return GestureDetector(
              onTap: () => _navegarPara(context, opcao['rota']),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(opcao['icone'], size: 40, color: Colors.indigo),
                      const SizedBox(height: 10),
                      Text(
                        opcao['titulo'],
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
