class Pagamento {
  int? id;
  int clienteId;
  int assinaturaId;
  String dataPagamento;
  double valor;
  String metodo; // Exemplo: M-Pesa, Transferência
  String status; // Pago, Pendente

  Pagamento({
    this.id,
    required this.clienteId,
    required this.assinaturaId,
    required this.dataPagamento,
    required this.valor,
    required this.metodo,
    required this.status,
  });

  // Converte Pagamento para um Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'clienteId': clienteId,
      'assinaturaId': assinaturaId,
      'dataPagamento': dataPagamento,
      'valor': valor,
      'metodo': metodo,
      'status': status,
    };
  }

  // Converte Map para Pagamento
  factory Pagamento.fromMap(Map<String, dynamic> map) {
    return Pagamento(
      id: map['id'],
      clienteId: map['clienteId'],
      assinaturaId: map['assinaturaId'],
      dataPagamento: map['dataPagamento'],
      valor: map['valor'],
      metodo: map['metodo'],
      status: map['status'],
    );
  }
}
