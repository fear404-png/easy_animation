import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isReady = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
        onTap: () => setState(() {
          isReady = !isReady;
        }),
        child: AnimatedContainer(
          decoration: BoxDecoration(
              color: isReady ? Colors.red : Colors.black,
              borderRadius:
                  BorderRadius.all(Radius.circular(isReady ? 0 : 50))),
          width: 100,
          height: 100,
          duration: const Duration(milliseconds: 80),
          curve: Curves.easeOutBack,
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
