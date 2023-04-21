// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:treino_perfeito/view/principal_view.dart';
import 'package:treino_perfeito/view/register_view.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //SizedBox(height: 50),
                  Container(
                    height: 300,
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
                      email = text;
                      print(text);
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'E-mail',
                    ),
                  ),
                  SizedBox(height: 10),
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
                  //Botão de Login
                  //
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 50),
                        backgroundColor: Color.fromARGB(255, 230, 9, 9),
                        elevation: 5,
                        shadowColor: Color.fromARGB(255, 34, 34, 34),
                      ),
                      onPressed: () {
                        if (email == 'ronaldo.benzi@fatec.sp.gov.br' &&
                            password == '123456') {
                          print('Login Autorizado');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Login Autorizado!'),
                              duration: Duration(seconds: 3),
                            ),
                          );
                          Navigator.pushNamed(context, 'principal');
                        } else {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Login Negado'),
                                content: Text('Senha ou email incorretos!'),
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
                          print('Login Negado');
                        }
                      },
                      child: Text('ENTRAR')),
                  SizedBox(height: 20),
                  //
                  //Botão de Esqueci a Senha
                  //
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 50),
                      backgroundColor: Color.fromARGB(255, 230, 9, 9),
                        elevation: 5,
                        shadowColor: Color.fromARGB(255, 34, 34, 34),
                    ),
                    child: Text(
                      'ESQUECI A SENHA',
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'forgot_password');
                    },
                  ),
                  SizedBox(height: 20),
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
                      Navigator.pushNamed(context, 'register');
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
