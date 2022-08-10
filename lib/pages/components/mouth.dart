import 'package:flutter/material.dart';

class MouthWidget extends StatelessWidget {
  const MouthWidget({
    super.key,
    required this.isReady,
  });

  final bool isReady;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeIn,
          color: Colors.black,
          width: 40,
          height: isReady ? 10 : 0,
        ),
      ),
    );
  }
}
