import 'package:easy_animation/pages/components/hp_bar.dart';
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
  double hp = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HpBarWidget(isReady: isReady, hp: hp),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              //Обрабатываем нажатие
              onTap: () => setState(() {
                !isReady ? isReady = true : hp -= 10;
                if (hp <= 0) {
                  isReady = false;
                  hp = 100;
                }
              }),

              child: GameStartButton(isReady: isReady),
            ),
          ],
        ),
      ),
    );
  }
}
