// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  String name = '';
  String Last_name = '';
  String email = '';
  String password = '';
  String dt_birth = '';
  double weight = 0;

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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/images/logo_2.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  SizedBox(height: 70),

                  TextField(
                    onChanged: (text) {
                      name = text;
                      print(text);
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nome',
                    ),
                  ),
                  SizedBox(height: 20),

                  TextField(
                    onChanged: (text) {
                      Last_name = text;
                      print(text);
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Sobrenome',
                    ),
                  ),
                  SizedBox(height: 20),

                  TextField(
                    onChanged: (text) {
                      dt_birth = text;
                      print(text);
                    },
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Data de Nascimento',
                    ),
                  ),
                  SizedBox(height: 20),

                  TextField(
                    onChanged: (text) {
                      weight = double.parse(text);
                      print(text);
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Peso',
                    ),
                  ),
                  SizedBox(height: 20),

                  TextField(
                    onChanged: (text) {
                      email = text;
                      print(text);
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'E-mail',
                    ),
                  ),
                  SizedBox(height: 20),

                  TextField(
                    onChanged: (text) {
                      password = text;
                      print(text);
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Senha',
                    ),
                  ),
                  SizedBox(height: 50),
                  //
                  //Botão de Cadastro
                  //
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 50),
                      backgroundColor: Color.fromARGB(255, 230, 9, 9),
                      elevation: 5,
                      shadowColor: Color.fromARGB(255, 34, 34, 34),
                    ),
                    child: Text(
                      'CADASTRAR-SE',
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      if (email != null && password != null) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Termos de Uso'),
                              content: Text(
                                  'Por favor informe que você leu e concorda com os termos de uso do aplicativo. (Sim você leu...)'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'principal');
                                  },
                                  child: Text('CONCORDO'),
                                ),
                              ],
                            );
                          },
                        );
                        print('REGISTRO OK');
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Dados Incrorretos'),
                              content: Text(
                                  'Por favor informe corretamente os dados para o registro.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                        print('REGISTRO NOT OK');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
