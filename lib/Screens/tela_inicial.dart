import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto5/widgets/card_planeta.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);
//CardPlaneta(
  //        descricao: 'Planeta dos Aneis',
    //      imagem: 'saturno.png',
      //    nome: 'Saturno',
       // ),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pagina inicial")),
      body: Container(
        child: ListView.builder(itemBuilder: (BuildContext context, int index ){
          
        }),
      ),
    );
  }
}
