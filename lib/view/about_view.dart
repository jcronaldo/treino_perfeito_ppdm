// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/images/logo_2.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    child: Text(
                      'Bem-vindo Perfect Train!\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 209, 209, 209),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Nosso objetivo é ajudá-lo a criar treinos específicos para atingir seus objetivos de fitness e saúde.\n\nAqui, você encontrará diversas opções de exercícios e treinos elaborados por profissionais qualificados e experientes, que ajudarão você a alcançar seus objetivos de maneira segura e eficiente.\n\nPara começar, você pode inserir suas informações pessoais, como idade, peso e altura, e também seus objetivos de fitness. Com base nessas informações, o aplicativo criará um plano de treino personalizado para você.\n\nVocê também pode escolher entre diferentes tipos de treinos, como cardio, força, flexibilidade e equilíbrio, e personalizar seu plano de treino para atender às suas necessidades específicas.\n\nNós acreditamos que a chave para o sucesso nos exercícios é a consistência, então também oferece recursos para ajudá-lo a manter-se motivado e no caminho certo. Você pode acompanhar seu progresso, definir metas e receber lembretes para ajudá-lo a manter sua rotina de exercícios.\n\nEstamos comprometidos em fornecer uma experiência de usuário fácil e agradável, para que você possa se concentrar no que é realmente importante: sua saúde e bem-estar. Não importa se você é um iniciante ou um atleta experiente, o Perfect Train é perfeito para ajudá-lo a alcançar seus objetivos de fitness.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 209, 209, 209),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {

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
                      'Bem vindo Ronaldo! \n\n Aproveite o aplicativo e tenha uma bom treino! \n\n (づ￣ 3￣)づ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 209, 209, 209),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}*/
