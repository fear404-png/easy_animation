import 'package:flutter/material.dart';

import 'eyes.dart';
import 'mouth.dart';
import 'text_and_hair.dart';

class GameStartButton extends StatelessWidget {
  const GameStartButton({
    super.key,
    required this.isReady,
  });

  final bool isReady;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(

          //В зависиммости от значения 'isReady' показываем тот или иной цвет
          color: isReady ? Colors.red : Colors.black,

          //Здесь тоже самое, только превращаем круг в квадрат и наоборот
          borderRadius: BorderRadius.all(Radius.circular(isReady ? 0 : 50))),
      //Размер нашего квадрата, если захотим, можем его тоже анимировать
      //например width: isReady ? 200 : 100
      width: 100,
      height: 100,

      //Сколько будет длиться анимация
      duration: const Duration(milliseconds: 350),
      //Это по какой кривой будет воспроизводится анимация, вариаций много
      curve: Curves.bounceOut,

      child: Stack(
        //Типо лицо
        children: [
          //Это наш текст который трансформируется в типо волосы
          TextAndHairWidget(isReady: isReady),
          //Это глазки ))
          EyesWidget(isReady: isReady),
          //рот
          MouthWidget(isReady: isReady)
        ],
      ),
    );
  }
}
