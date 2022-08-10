import 'package:flutter/material.dart';

class TextAndHairWidget extends StatelessWidget {
  const TextAndHairWidget({
    super.key,
    required this.isReady,
  });

  final bool isReady;

  @override
  Widget build(BuildContext context) {
    return AnimatedAlign(
        alignment: isReady ? Alignment.topCenter : Alignment.center,
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeOutBack,
        child: Text(isReady ? "||||" : "START"));
  }
}