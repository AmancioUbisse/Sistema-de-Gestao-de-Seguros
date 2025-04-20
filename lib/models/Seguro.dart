class Seguro {
  int? id;
  String nome;
  String descricao;
  double valor;
  String validade;

  Seguro({this.id, required this.nome, required this.descricao, required this.valor, required this.validade});

  // Converte Seguro para um Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'descricao': descricao,
      'valor': valor,
      'validade': validade,
    };
  }

  // Converte Map para Seguro
  factory Seguro.fromMap(Map<String, dynamic> map) {
    return Seguro(
      id: map['id'],
      nome: map['nome'],
      descricao: map['descricao'],
      valor: map['valor'],
      validade: map['validade'],
    );
  }
}
