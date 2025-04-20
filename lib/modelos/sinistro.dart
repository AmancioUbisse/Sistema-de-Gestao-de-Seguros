class Sinistro {
  final String id;
  final String clienteId;
  final String apoliceNumero;
  final String tipo; // Ex: Acidente, Roubo
  final String descricao;
  final DateTime data;

  Sinistro({
    required this.id,
    required this.clienteId,
    required this.apoliceNumero,
    required this.tipo,
    required this.descricao,
    required this.data,
  });
}
