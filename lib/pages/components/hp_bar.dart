import 'package:flutter/material.dart';

class HpBarWidget extends StatelessWidget {
  const HpBarWidget({
    super.key,
    required this.isReady,
    required this.hp,
  });

  final bool isReady;
  final double hp;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 100, maxHeight: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.bounceOut,
            decoration: BoxDecoration(
                border: Border.all(
                    color: isReady ? Colors.red : Colors.black.withOpacity(0))),
            height: 10,
            width: 100,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeInExpo,
              color: Colors.red,
              height: 10,
              width: isReady ? hp : 0,
            ),
          )
        ],
      ),
    );
  }
}
