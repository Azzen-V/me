import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';
import 'package:me/business_logic/data/constants.dart';
import 'package:me/screens/tech_stack/hex_content.dart';
import 'package:me/widgets/separator.dart';

class TechStackMobileView extends StatelessWidget {
  static const double _hexSize = 300;
  const TechStackMobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Paths List
    List<String> paths = Constants.pathsMobile.expand((x) => x).toList();
    paths = paths.where((element) => element.isNotEmpty).toList();

    // TechStack List
    List<String> techStack = Constants.techStackMobile.expand((x) => x).toList();
    techStack.removeRange(paths.length, techStack.length);

    return Column(
      children: [
        SizedBox(
          height: _hexSize / 3 * 2 * techStack.length + _hexSize / 3, // 2 thirds of hex size * no of hex + last thirst of hex size
          child: Stack(
            alignment: Alignment.topCenter,
            children: List.generate(
              techStack.length,
              (index) => Positioned(
                top: _hexSize / 3 * 2 * index, // move hex by two thirds of its size * index to slightly overlap them
                child: HexagonWidget.pointy(
                  height: _hexSize,
                  color: Theme.of(context).colorScheme.primary,
                  elevation: 25,
                  child: Transform.translate(
                    offset: const Offset(0, -_hexSize / 20),
                    child: HexContent(
                      label: techStack[index],
                      path: paths[index],
                      imgSize: _hexSize / 4,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Separator.vertical(),
        Text(
          "... und alles Weitere lerne ich schnell!",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ],
    );
  }
}
