import 'DatabaseHelper.dart';

class ClienteHelper {
  static final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  // Criar Cliente
  Future<int> insertCliente(Map<String, dynamic> cliente) async {
    final db = await _dbHelper.database;
    return await db.insert('cliente', cliente);
  }

  // Obter um Cliente
  Future<Map<String, dynamic>?> getCliente(int id) async {
    final db = await _dbHelper.database;
    final maps = await db.query(
      'cliente',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return maps.first;
    }
    return null;
  }

  // Obter todos os Clientes
  Future<List<Map<String, dynamic>>> getAllClientes() async {
    final db = await _dbHelper.database;
    return await db.query('cliente');
  }

  // Atualizar Cliente
  Future<int> updateCliente(Map<String, dynamic> cliente, int id) async {
    final db = await _dbHelper.database;
    return await db.update(
      'cliente',
      cliente,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Deletar Cliente
  Future<int> deleteCliente(int id) async {
    final db = await _dbHelper.database;
    return await db.delete(
      'cliente',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
