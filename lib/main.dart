import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sqflite/sqflite.dart';

import 'routes/routes.dart'; // onde você configura o GoRouter

void main() {
  // Inicializa o databaseFactory para uso com FFI antes de rodar o aplicativo
  DatabaseFactory? databaseFactoryFfi;
  

  // Roda o app
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,  // Usando o GoRouter configurado
      title: 'Minha Aplicação de Seguros',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
