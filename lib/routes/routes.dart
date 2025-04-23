import 'package:go_router/go_router.dart';

import '../database/SeguroDetalhesPage.dart';
import '../models/Usuario.dart';
import '../screens/HomePage.dart';
import '../screens/LoginPage.dart';
import '../screens/RegisterPage.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/cadastro',
      name: 'cadastro',
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
