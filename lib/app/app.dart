import 'package:easy_animation/pages/main_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Просто назначил темную тему, мне так нравится
      theme: ThemeData.dark(),
      //Здесь мы описываем все наши экраны
      routes: {"/main_page": (context) => const MainPage()},
      //Запускает экран
      initialRoute: "/main_page",
    );
  }
}
