import 'package:flutter/material.dart';

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

        child: AnimatedContainer(
          decoration: BoxDecoration(

              //В зависиммости от значения 'isReady' показываем тот или иной цвет
              color: isReady ? Colors.red : Colors.black,

              //Здесь тоже самое, только превращаем круг в квадрат и наоборот
              borderRadius:
                  BorderRadius.all(Radius.circular(isReady ? 0 : 50))),
          //Размер нашего квадрата, если захотим, можем его тоже анимировать
          //например width: isReady ? 200 : 100
          width: 100,
          height: 100,

          //Сколько будет длиться анимация
          duration: const Duration(milliseconds: 350),
          //Это по какой кривой будет воспроизводится анимация, вариаций много
          curve: Curves.easeOutBack,

          //Анимируемый алигн xD
          //Тут все так-же, в зависиммости от значения isReady мы задаем тот или иной параметр
          child: AnimatedAlign(
              alignment: isReady ? Alignment.topCenter : Alignment.center,
              duration: const Duration(milliseconds: 150),
              curve: Curves.easeOutBack,
              child: Text(isReady ? "||||" : "START")),
        ),
      )),
    );
  }
}
