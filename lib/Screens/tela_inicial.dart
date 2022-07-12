import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto5/Models/planeta.dart';
import 'package:projeto5/widgets/card_planeta.dart';

class TelaInicial extends StatelessWidget {
  TelaInicial({Key? key}) : super(key: key);
//CardPlaneta(
  //        descricao: 'Planeta dos Aneis',
  //      imagem: 'saturno.png',
  //    nome: 'Saturno',
  // ),
  var planetas = [
    Planeta('Saturno', 'Planeta dos Aneis', 'saturno.png'),
    Planeta('Saturno', 'Planeta dos Aneis', 'saturno.png'),
    Planeta('Saturno', 'Planeta dos Aneis', 'saturno.png'),
    Planeta('Saturno', 'Planeta dos Aneis', 'saturno.png'),
    Planeta('Saturno', 'Planeta dos Aneis', 'saturno.png'),
    Planeta('Saturno', 'Planeta dos Aneis', 'saturno.png'),
    Planeta('Saturno', 'Planeta dos Aneis', 'saturno.png'),
    Planeta('Saturno', 'Planeta dos Aneis', 'saturno.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pagina inicial")),
      body: Container(
        child: ListView.builder(
            itemCount: planetas.length,
            itemBuilder: (BuildContext context, int index) {
              return CardPlaneta(
                  nome: planetas[index].nome,
                  descricao: planetas[index].descricao,
                  imagem: planetas[index].imagem);
            }),
      ),
    );
  }
}
