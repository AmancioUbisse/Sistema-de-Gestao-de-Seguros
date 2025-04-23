import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'RegisterPage.dart'; // Adicione a importação para RegisterPage
import '../service/AuthService.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // Função para realizar o login
  void _login() async {
    if (_formKey.currentState?.validate() ?? false) {
      // Chamando o AuthService para validar o login
      bool isAuthenticated = await AuthService.instance.login(
        _emailController.text,
        _passwordController.text,
      );

      if (isAuthenticated) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Bem-vindo, ${_emailController.text}!')),
        );

        // Buscar os dados do usuário autenticado
        final usuario = await AuthService.instance.getUsuarioLogado();

        // Redirecionar para a tela principal passando o usuário
        Navigator.pushReplacementNamed(
          context,
          '/home',
          arguments: usuario,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Credenciais inválidas')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Campo de e-mail
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira um e-mail.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Campo de senha
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira uma senha.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32),

              // Botão de login
              ElevatedButton(
                onPressed: _login,
                child: const Text('Entrar'),
              ),

              const SizedBox(height: 16),

              // Botão para navegar para a tela de cadastro
              TextButton(
                onPressed: () {
                  context.go('/cadastro'); // Navegação usando GoRouter
                },
                child: const Text('Não tem uma conta? Cadastre-se'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
