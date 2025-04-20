class Cliente {
  int? id;
  String nome;
  String email;
  String bi;
  String senha;

  Cliente({this.id, required this.nome, required this.email, required this.bi, required this.senha});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'bi': bi,
      'senha': senha,
    };
  }

  factory Cliente.fromMap(Map<String, dynamic> map) {
    return Cliente(
      id: map['id'],
      nome: map['nome'],
      email: map['email'],
      bi: map['bi'],
      senha: map['senha'],
    );
  }
}
