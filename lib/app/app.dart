import 'package:easy_animation/pages/main_page.dart';
import 'package:flutter/material.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      routes: {"/main_page": (context) => const MainPage()},
      initialRoute: "/main_page",
    );
  }
}
