import 'package:campo_minado/components/campo_widget.dart';
import 'package:campo_minado/models/campo.dart';
import 'package:campo_minado/models/tabuleiro.dart';
import 'package:flutter/material.dart';

class TabuleiroWidget extends StatelessWidget {
  final Tabuleiro tabuleiro;
  final Function(Campo) onAbrir;
  final Function(Campo) onAlternarMarcacao;

  TabuleiroWidget(
      {required this.onAbrir,
      required this.onAlternarMarcacao,
      required this.tabuleiro});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: GridView.count(
        crossAxisCount: tabuleiro.colunas,
        children: tabuleiro.campos.map((c) {
          return CampoWidget(
              campo: c,
              onAbrir: onAbrir,
              onAlternarMarcacao: onAlternarMarcacao);
        }).toList(),
      ),
      
    );
    
  }
  
}
