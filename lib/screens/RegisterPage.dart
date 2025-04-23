import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'LoginPage.dart'; // Adicione a importação para LoginPage

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _biController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  void _cadastrar() {
    if (_formKey.currentState!.validate()) {
      // Aqui você pode chamar o método do banco para salvar o cliente
      final nome = _nomeController.text;
      final email = _emailController.text;
      final bi = _biController.text;
      final senha = _senhaController.text;

      // Exemplo de feedback
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Usuário $nome cadastrado com sucesso!')),
      );

      // Depois pode navegar para a tela de login
      Navigator.pushReplacementNamed(
          context, '/login'); // Navegar de volta para o login
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nomeController,
                decoration: const InputDecoration(labelText: 'Nome'),
                validator: (value) => value!.isEmpty ? 'Informe o nome' : null,
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) => value!.isEmpty ? 'Informe o email' : null,
              ),
              TextFormField(
                controller: _biController,
                decoration: const InputDecoration(labelText: 'BI'),
                validator: (value) =>
                    value!.isEmpty ? 'Informe o número do BI' : null,
              ),
              TextFormField(
                controller: _senhaController,
                decoration: const InputDecoration(labelText: 'Senha'),
                obscureText: true,
                validator: (value) => value!.length < 6
                    ? 'Senha deve ter no mínimo 6 caracteres'
                    : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _cadastrar,
                child: const Text('Cadastrar'),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  context.go(
                      '/login'); // Navegação para a página de login usando GoRouter
                },
                child: const Text('Já tem conta? Fazer login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
