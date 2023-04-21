// ignore_for_file: prefer_const_constructors

//importar pacote easy_splash_screen
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:treino_perfeito/view/login_view.dart';

import 'principal_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1, // 100% da largura da tela
      height: MediaQuery.of(context).size.height * 1,
      child: EasySplashScreen(
        logo: Image.asset(
              'lib/images/logo_splash.png',
              fit: BoxFit.cover,
            ),
        logoWidth: 300,
        backgroundColor: Color.fromARGB(255, 252, 252, 252),
        showLoader: true,
        loadingText: Text('Preparando anilhas...'),
        durationInSeconds: 10,
        navigator: 'login',
      ),
    );
  }
}