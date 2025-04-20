import 'package:flutter/material.dart';

class ConfiguracoesScreen extends StatefulWidget {
  const ConfiguracoesScreen({super.key});

  @override
  State<ConfiguracoesScreen> createState() => _ConfiguracoesScreenState();
}

class _ConfiguracoesScreenState extends State<ConfiguracoesScreen> {
  bool notificacoesAtivadas = true;
  bool modoEscuro = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Configurações')),
      body: ListView(
        children: [
          SwitchListTile(
            value: notificacoesAtivadas,
            title: const Text('Notificações'),
            onChanged: (valor) {
              setState(() => notificacoesAtivadas = valor);
            },
          ),
          SwitchListTile(
            value: modoEscuro,
            title: const Text('Modo Escuro'),
            onChanged: (valor) {
              setState(() => modoEscuro = valor);
              // Aqui você pode aplicar o tema escuro na app
            },
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Idioma'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
