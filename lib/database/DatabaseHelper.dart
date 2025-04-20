import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();

  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('seguros.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
    CREATE TABLE cliente (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nome TEXT,
      email TEXT,
      bi TEXT,
      senha TEXT
    );
    ''');

    await db.execute('''
    CREATE TABLE seguro (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nome TEXT,
      descricao TEXT,
      valor REAL,
      validade TEXT
    );
    ''');

    await db.execute('''
    CREATE TABLE assinaturaSeguro (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      clienteId INTEGER,
      seguroId INTEGER,
      dataInicio TEXT,
      dataFim TEXT,
      valorPago REAL,
      status TEXT,
      FOREIGN KEY (clienteId) REFERENCES cliente(id),
      FOREIGN KEY (seguroId) REFERENCES seguro(id)
    );
    ''');

    await db.execute('''
    CREATE TABLE pagamento (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      clienteId INTEGER,
      assinaturaId INTEGER,
      dataPagamento TEXT,
      valor REAL,
      metodo TEXT,
      status TEXT,
      FOREIGN KEY (clienteId) REFERENCES cliente(id),
      FOREIGN KEY (assinaturaId) REFERENCES assinaturaSeguro(id)
    );
    ''');
  }

 
}
