import 'package:flutter/material.dart';

class Pedido {
  int codigo;
  String nome;
  String cpf;
  double valorVenda;

  Pedido({
    @required this.codigo,
    @required this.nome,
    @required this.cpf,
    @required this.valorVenda,
  });

  @override
  String toString() {
    return 'Pedido{codigo: $codigo, nome: $nome, cpf: $cpf, valorVenda: $valorVenda}';
  }
}
