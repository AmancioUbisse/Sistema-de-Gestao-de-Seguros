import 'package:flutter/material.dart';

class SeguroDetalhesPage extends StatelessWidget {
  final String nome;
  final String descricao;
  final String imagem;

  const SeguroDetalhesPage({
    super.key,
    required this.nome,
    required this.descricao,
    required this.imagem,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nome),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(imagem, height: 200, fit: BoxFit.cover),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              nome,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              descricao,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () {
                // Aqui poderá navegar para processo de contratação/pagamento
              },
              child: const Text('Contratar Seguro'),
            ),
          ),
        ],
      ),
    );
  }
}
