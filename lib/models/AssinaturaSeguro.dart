class AssinaturaSeguro {
  int? id;
  int clienteId;
  int seguroId;
  String dataInicio;
  String dataFim;
  double valorPago;
  String status; // Ativo, Expirado, Cancelado

  AssinaturaSeguro({
    this.id,
    required this.clienteId,
    required this.seguroId,
    required this.dataInicio,
    required this.dataFim,
    required this.valorPago,
    required this.status,
  });

  // Converte AssinaturaSeguro para um Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'clienteId': clienteId,
      'seguroId': seguroId,
      'dataInicio': dataInicio,
      'dataFim': dataFim,
      'valorPago': valorPago,
      'status': status,
    };
  }

  // Converte Map para AssinaturaSeguro
  factory AssinaturaSeguro.fromMap(Map<String, dynamic> map) {
    return AssinaturaSeguro(
      id: map['id'],
      clienteId: map['clienteId'],
      seguroId: map['seguroId'],
      dataInicio: map['dataInicio'],
      dataFim: map['dataFim'],
      valorPago: map['valorPago'],
      status: map['status'],
    );
  }
}
