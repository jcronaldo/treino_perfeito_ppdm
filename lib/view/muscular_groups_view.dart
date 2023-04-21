// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:flutter/services.dart';
import '../model/muscles.dart';

class MuscularGroupsView extends StatefulWidget {
  const MuscularGroupsView({Key? key}) : super(key: key);

  @override
  State<MuscularGroupsView> createState() => _MuscularGroupsViewState();
}

class _MuscularGroupsViewState extends State<MuscularGroupsView> {
  String musculo_anterior = '';
  List<Muscles> musculos = [];

  //CARREGAR DADOS DO ARQUIVO JSON
  carregarDados() async {
    final String arq = await rootBundle.loadString('lib/data/muscles.json');
    final dynamic d = await json.decode(arq);
    setState(() {
      d.forEach((item) {
        if (item['grupo'] != musculo_anterior) {
          musculos.add(Muscles.fromJson(item));
          musculo_anterior = item['grupo'];
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await carregarDados();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfect Train'),
        backgroundColor: Color.fromARGB(255, 230, 9, 9),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 151, 151, 151),
              Color.fromARGB(255, 99, 98, 98)
            ])),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 24.0, 12.0, 24.0),
          child: ListView.builder(
            itemCount: musculos.length,
            itemBuilder: (context, index) {
              return Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 194, 43, 43),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.sports),
                    title: Text(
                      musculos[index].grupo,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 56, 13, 13),
                      ),
                    ),
                    onTap: () {
                      //
                      // Navegação
                      //
                      Navigator.pushNamed(
                        context,
                        'exercises',
                        arguments: musculos[index],
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
