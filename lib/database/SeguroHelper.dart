import 'DatabaseHelper.dart';

class SeguroHelper {
  static final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  // Criar Seguro
  Future<int> insertSeguro(Map<String, dynamic> seguro) async {
    final db = await _dbHelper.database;
    return await db.insert('seguro', seguro);
  }

  // Obter um Seguro
  Future<Map<String, dynamic>?> getSeguro(int id) async {
    final db = await _dbHelper.database;
    final maps = await db.query(
      'seguro',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return maps.first;
    }
    return null;
  }

  // Obter todos os Seguros
  Future<List<Map<String, dynamic>>> getAllSeguros() async {
    final db = await _dbHelper.database;
    return await db.query('seguro');
  }

  // Atualizar Seguro
  Future<int> updateSeguro(Map<String, dynamic> seguro, int id) async {
    final db = await _dbHelper.database;
    return await db.update(
      'seguro',
      seguro,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Deletar Seguro
  Future<int> deleteSeguro(int id) async {
    final db = await _dbHelper.database;
    return await db.delete(
      'seguro',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
