// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:flutter/services.dart';
import '../model/muscles.dart';

class ExercisesView extends StatefulWidget {
  const ExercisesView({Key? key}) : super(key: key);

  @override
  State<ExercisesView> createState() => _ExercisesViewState();
}

class _ExercisesViewState extends State<ExercisesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfect Train'),
        backgroundColor: Color.fromARGB(255, 230, 9, 9),
        automaticallyImplyLeading: true,
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
          child: Column(
            children: [
              Container(
                child: Text(
                  'Supino reto\n',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 209, 209, 209),
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Deitado em um banco, segure a barra com as mãos afastadas na largura dos ombros e desça lentamente até a barra tocar o peito. Em seguida, empurre a barra de volta até a posição inicial.\n\n\n',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 209, 209, 209),
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Supino inclinado\n',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 209, 209, 209),
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Deitado em um banco inclinado, segure a barra com as mãos afastadas na largura dos ombros e desça lentamente até a barra tocar o peito. Em seguida, empurre a barra de volta até a posição inicial.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 209, 209, 209),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
