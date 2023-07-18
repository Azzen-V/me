import 'package:flutter/material.dart';
import 'package:me/screens/main/me_description.dart';
import 'package:me/widgets/separator.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/me_2.jpg'),
        const Separator.horizontal(),
        Flexible(child: MeDescription()),
      ],
    );
  }
}
