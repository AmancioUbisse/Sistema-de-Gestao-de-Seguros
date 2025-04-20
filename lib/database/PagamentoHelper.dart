import 'DatabaseHelper.dart';

class PagamentoHelper {
  static final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  // Criar Pagamento
  Future<int> insertPagamento(Map<String, dynamic> pagamento) async {
    final db = await _dbHelper.database;
    return await db.insert('pagamento', pagamento);
  }

  // Obter um Pagamento
  Future<Map<String, dynamic>?> getPagamento(int id) async {
    final db = await _dbHelper.database;
    final maps = await db.query(
      'pagamento',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return maps.first;
    }
    return null;
  }

  // Obter todos os Pagamentos
  Future<List<Map<String, dynamic>>> getAllPagamentos() async {
    final db = await _dbHelper.database;
    return await db.query('pagamento');
  }

  // Atualizar Pagamento
  Future<int> updatePagamento(Map<String, dynamic> pagamento, int id) async {
    final db = await _dbHelper.database;
    return await db.update(
      'pagamento',
      pagamento,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Deletar Pagamento
  Future<int> deletePagamento(int id) async {
    final db = await _dbHelper.database;
    return await db.delete(
      'pagamento',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
