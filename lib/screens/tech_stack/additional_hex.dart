import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';

class AdditionalHex extends StatelessWidget {
  const AdditionalHex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HexagonWidget.pointy(
      width: 300,
      color: Theme.of(context).colorScheme.inversePrimary,
      cornerRadius: 15,
      elevation: 15,
      child: Text(
        "... und alles Weitere kann ich lernen!",
        style: Theme.of(context).textTheme.headlineMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
