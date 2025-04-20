
class Apolice {
  final String numero;
  final String clienteId;
  final String tipo; // Ex: Vida, Carro, Saúde
  final DateTime inicio;
  final DateTime fim;
  final double valor;

  Apolice({
    required this.numero,
    required this.clienteId,
    required this.tipo,
    required this.inicio,
    required this.fim,
    required this.valor,
  });
}
