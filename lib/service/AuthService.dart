import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class AuthService {
  static final AuthService instance = AuthService._init();
  static Database? _database;

  AuthService._init();

  Map<String, dynamic>? _usuarioLogado;

  // Getter para acessar o usuário logado
  Map<String, dynamic>? get usuarioLogado => _usuarioLogado;

  // Obtendo o banco de dados
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('seguros.db');
    return _database!;
  }

  // Inicialização do banco de dados
  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return openDatabase(path, version: 1);
  }

  // Função para validar o login
  Future<bool> login(String email, String senha) async {
    final db = await database;
    final result = await db.query(
      'cliente',
      where: 'email = ? AND senha = ?',
      whereArgs: [email, senha],
    );
    
    if (result.isNotEmpty) {
      _usuarioLogado = result.first;
      return true;
    }

    _usuarioLogado = null;
    return false;
  }

  // Método para obter os dados do usuário logado
  Map<String, dynamic>? getUsuarioLogado() {
    return _usuarioLogado;
  }

  // Função para logout (opcional)
  void logout() {
    _usuarioLogado = null;
  }
}
