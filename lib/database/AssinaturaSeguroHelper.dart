import 'DatabaseHelper.dart';

class AssinaturaSeguroHelper {
  static final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  // Criar AssinaturaSeguro
  Future<int> insertAssinaturaSeguro(Map<String, dynamic> assinatura) async {
    final db = await _dbHelper.database;
    return await db.insert('assinaturaSeguro', assinatura);
  }

  // Obter uma AssinaturaSeguro
  Future<Map<String, dynamic>?> getAssinaturaSeguro(int id) async {
    final db = await _dbHelper.database;
    final maps = await db.query(
      'assinaturaSeguro',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return maps.first;
    }
    return null;
  }

  // Obter todas as Assinaturas
  Future<List<Map<String, dynamic>>> getAllAssinaturas() async {
    final db = await _dbHelper.database;
    return await db.query('assinaturaSeguro');
  }

  // Atualizar AssinaturaSeguro
  Future<int> updateAssinaturaSeguro(Map<String, dynamic> assinatura, int id) async {
    final db = await _dbHelper.database;
    return await db.update(
      'assinaturaSeguro',
      assinatura,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Deletar AssinaturaSeguro
  Future<int> deleteAssinaturaSeguro(int id) async {
    final db = await _dbHelper.database;
    return await db.delete(
      'assinaturaSeguro',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
