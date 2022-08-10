import 'package:flutter/material.dart';

class EyesWidget extends StatelessWidget {
  const EyesWidget({
    super.key,
    required this.isReady,
  });

  final bool isReady;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        RotationTransition(
          turns: const AlwaysStoppedAnimation(15 / 360),
          child: AnimatedContainer(
              width: 30,
              height: isReady ? 20 : 0,
              color: Colors.black,
              curve: Curves.easeIn,
              duration: const Duration(milliseconds: 200)),
        ),
        const SizedBox(
          width: 20,
        ),
        RotationTransition(
          turns: const AlwaysStoppedAnimation(-15 / 360),
          child: AnimatedContainer(
              width: 30,
              height: isReady ? 20 : 0,
              color: Colors.black,
              curve: Curves.easeIn,
              duration: const Duration(milliseconds: 200)),
        ),
      ]),
    );
  }
}
