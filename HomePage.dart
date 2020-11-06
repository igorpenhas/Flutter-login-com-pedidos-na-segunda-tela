import 'package:flutter/material.dart';
import 'package:liberavendas/objects/pedido.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Pedido> pedidos = [
    Pedido(codigo: 1, nome: "igor", cpf: "23232323", valorVenda: 230.78),
    Pedido(codigo: 1, nome: "igor2", cpf: "556565656", valorVenda: 124.78),
    Pedido(codigo: 1, nome: "igor3", cpf: "754645633", valorVenda: 28.78),
    Pedido(codigo: 1, nome: "igor4", cpf: "45435673", valorVenda: 765.78),
    Pedido(codigo: 1, nome: "igor5", cpf: "786576573", valorVenda: 98.78),
    Pedido(codigo: 1, nome: "igor6", cpf: "6767676573", valorVenda: 2983.78),
    Pedido(codigo: 1, nome: "igor7", cpf: "6576576576", valorVenda: 2398.78),
  ];

  @override
  void initState() {
    for (int i = 0; i < pedidos.length; i++) {
      print(pedidos.elementAt(i).toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Coqueiro"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pedidos",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Divider(
                color: Colors.black,
                height: 15,
                thickness: 1,
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: pedidos.length, // the length
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Widget cancelaButton = FlatButton(
                            child: Text("Cancelar"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          );
                          Widget continuaButton = FlatButton(
                            child: Text("Confirmar"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          );
                          AlertDialog alert = AlertDialog(
                            title: Text("Liberar Pedido"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Deseja Liberar o Pedido? \n\n"
                                    "Nome: ${pedidos.elementAt(index).nome}\n\n"
                                    "CPF: ${pedidos.elementAt(index).cpf}\n\n"
                                    "Valor Venda: ${pedidos.elementAt(index).valorVenda}"),
                              ],
                            ),
                            actions: [continuaButton, cancelaButton],
                          );

                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return alert;
                            },
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                      'Nome: ${pedidos.elementAt(index).nome}'),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'CPF: ${pedidos.elementAt(index).cpf}'),
                                      Text(
                                          'Valor Venda: ${pedidos.elementAt(index).valorVenda}'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
