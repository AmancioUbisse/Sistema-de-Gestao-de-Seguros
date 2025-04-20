import '../screens/dashboard_screen.dart';
import '../screens/clientes_screen.dart';
import '../screens/apolices_screen.dart';
import '../screens/pagamentos_screen.dart';
import '../screens/sinistros_screen.dart';
import '../screens/relatorios_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const LoginScreen(),
  '/dashboard': (context) => const DashboardScreen(),
  '/clientes': (context) => const ClientesScreen(),
  '/apolices': (context) => const ApolicesScreen(),
  '/pagamentos': (context) => const PagamentosScreen(),
  '/sinistros': (context) => const SinistrosScreen(),
  '/relatorios': (context) => const RelatoriosScreen(),
};
