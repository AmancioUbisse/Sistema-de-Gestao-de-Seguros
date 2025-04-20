class Pagamento {
  final String id;
  final String clienteId;
  final DateTime data;
  final double valor;
  final String metodo; // Ex: M-Pesa, Transferência, Dinheiro

  Pagamento({
    required this.id,
    required this.clienteId,
    required this.data,
    required this.valor,
    required this.metodo,
  });
}
