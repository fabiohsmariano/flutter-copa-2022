import 'package:flutter/material.dart';

class ListaEquipes extends StatelessWidget {
  ListaEquipes({Key? key}) : super(key: key);

  final equipes = [
    {
      "nome": "Arábia Saudita",
      "grupo": "C",
      "url_simbolo": "https://upload.wikimedia.org/wikipedia/pt/0/01/SAFF.png"
    },
    {
      "nome": "Argentina",
      "grupo": "C",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/pt/f/fc/230px-Afa_logo.svg.png"
    },
    {
      "nome": "Austrália",
      "grupo": "D",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/commons/c/cf/Australia_national_football_team_badge.svg"
    },
    {
      "nome": "Catar",
      "grupo": "A",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/pt/a/a9/Associa%C3%A7%C3%A3o_do_Qatar_de_Futebol.png"
    },
    {
      "nome": "Dinamarca",
      "grupo": "D",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/commons/9/9d/Dansk_boldspil_union_logo.svg"
    },
    {
      "nome": "Equador",
      "grupo": "A",
      "url_simbolo": "https://upload.wikimedia.org/wikipedia/pt/7/74/FEFecu.png"
    },
    {
      "nome": "Estados Unidos",
      "grupo": "B",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/commons/8/86/Crest_of_the_United_States_Soccer_Federation.png"
    },
    {
      "nome": "Holanda",
      "grupo": "A",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/pt/a/a1/Netherlands_national_football_team_logo_2017.png"
    },
    {
      "nome": "Inglaterra",
      "grupo": "B",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/pt/2/2e/England_crest_2009.svg.png"
    },
    {
      "nome": "Irã",
      "grupo": "B",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/pt/a/a6/Football_Federation_Islamic_Republic_of_Iran.png"
    },
    {
      "nome": "México",
      "grupo": "C",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/pt/b/b3/SeleccionMexico.png"
    },
    {
      "nome": "País de Gales",
      "grupo": "B",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/en/d/dc/Wales_national_football_team_logo.svg"
    },
    {
      "nome": "Polônia",
      "grupo": "C",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/commons/c/c9/Herb_Polski.svg"
    },
    {
      "nome": "Senegal",
      "grupo": "A",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/pt/7/7c/FSenegalaiseF.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: equipes.length,
        itemBuilder: (context, i) {
          var equipe = equipes[i];
          var simbolo = Image.network(equipe["url_simbolo"]!);
          return ListTile(
              leading: simbolo,
              title: Text(equipe["nome"]!),
              subtitle: Text("Grupo " + equipe["grupo"]!));
        });
  }
}