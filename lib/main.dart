// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'view/splash_view.dart';
import 'view/login_view.dart';
import 'view/register_view.dart';
import 'view/forgot_password_view.dart';

import 'view/principal_view.dart';

import 'view/home_view.dart';
import 'view/muscular_groups_view.dart';
import 'view/exercises_view.dart';
import 'view/about_view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfect Train',
      //
      // ROTAS DE NAVEGAÇÃO
      //
      initialRoute: 'splash',
      routes: {
        'splash': (context) => SplashView(),
        'login': (context) => LoginView(),
        'register': (context) => RegisterView(),
        'forgot_password': (context) => ForgotPasswordView(),
        'principal': (context) => PrincipalView(),
        'home': (context) => HomeView(),
        'muscular_groups': (context) => MuscularGroupsView(),
        'exercises': (context) => ExercisesView(),
      },
    ),
  );
}
