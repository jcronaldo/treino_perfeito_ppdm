// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
/*import 'package:intl/intl.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';*/

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  String email = '';

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

                  Container(
                    child: Text(
                      'Por favor, informe o e-mail cadastrado para redefinição de senha. Após a confirmação, você receberá um e-mail com um link para redefinir sua senha.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 209, 209, 209),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),

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
                  SizedBox(height: 50),
                  //
                  //Botão Enviar
                  //
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 50),
                      backgroundColor: Color.fromARGB(255, 230, 9, 9),
                      elevation: 5,
                      shadowColor: Color.fromARGB(255, 34, 34, 34),
                    ),
                    child: Text(
                      'ENVIAR',
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      if (email != null) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Email Enviado'),
                              content: Text(
                                  'Um email foi enviado para o endereço informado. Por favor, verifique sua caixa de entrada e clique no link para redefinir sua senha.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'login');
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                        print('ENVIADO');
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Dados Incrorretos'),
                              content: Text(
                                  'Por favor informe corretamente o email cadastrado para envio da senha.'),
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
                        print('NÃO ENVIADO');
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
