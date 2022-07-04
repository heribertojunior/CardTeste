import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardPlaneta extends StatelessWidget {
  const CardPlaneta(
      {Key? key,
      required this.nome,
      required this.descricao,
      required this.imagem})
      : super(key: key);
  final String nome;
  final String descricao;
  final String imagem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: GestureDetector(
        onTap: (() {
          final snackBar = SnackBar(content: Text(nome));

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }),
        child: Card(
          elevation: 2,
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  child: Image.asset("assets/images/$imagem"),
                )),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$nome",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text("$descricao")
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
