import 'package:flutter/material.dart';
import 'SeguroDetalhesPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> seguros = [
    {
      'nome': 'Seguro de Carro',
      'descricao': 'Proteja seu veículo contra danos e roubos.',
      'imagem': 'assets/images/seguro_carro.png',
    },
    {
      'nome': 'Seguro de Vida',
      'descricao': 'Garantia financeira para sua família.',
      'imagem': 'assets/images/seguro_vida.png',
    },
    {
      'nome': 'Seguro de Saúde',
      'descricao': 'Cobertura médica para sua tranquilidade.',
      'imagem': 'assets/images/seguro_saude.png',
    },
    {
      'nome': 'Seguro Residencial',
      'descricao': 'Proteção para seu lar e seus bens.',
      'imagem': 'assets/images/seguro_residencial.png',
    },
    {
      'nome': 'Seguro de Viagem',
      'descricao': 'Tranquilidade nas suas viagens internacionais.',
      'imagem': 'assets/images/seguro_viagem.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seguros Disponíveis'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: seguros.length,
          itemBuilder: (context, index) {
            final seguro = seguros[index];
            return Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SeguroDetalhesPage(
                        nome: seguro['nome']!,
                        descricao: seguro['descricao']!,
                        imagem: seguro['imagem']!,
                      ),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                      child: Image.asset(
                        seguro['imagem']!,
                        height: 120.0,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        seguro['nome']!,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        seguro['descricao']!,
                        style: const TextStyle(fontSize: 14.0),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
