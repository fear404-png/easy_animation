import 'package:easy_animation/pages/components/eyes.dart';
import 'package:easy_animation/pages/components/mouth.dart';
import 'package:easy_animation/pages/components/text_and_hair.dart';
import 'package:flutter/material.dart';

import 'components/game_start_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //Булевое значения благодаря которому мы будем менять состояние
  bool isReady = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          //Делаем контейнер кликабельным
          child: GestureDetector(
        //Обрабатываем нажатие
        onTap: () => setState(() {
          //Именяем булевое значение на противоположное себе
          isReady = !isReady;
        }),

        child: GameStgitartButton(isReady: isReady),
      )),
    );
  }
}
