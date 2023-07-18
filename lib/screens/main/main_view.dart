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
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.primary,
                offset: const Offset(-15, -15),
              ),
              BoxShadow(
                color: Theme.of(context).colorScheme.primary.withGreen(255),
                offset: const Offset(15, 15),
              ),
            ],
          ),
          child: Image.asset('images/me_2.jpg'),
        ),
        const Separator.horizontal(factor: 2),
        Flexible(child: MeDescription()),
      ],
    );
  }
}
