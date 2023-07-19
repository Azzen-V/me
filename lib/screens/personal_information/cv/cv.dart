import 'package:flutter/material.dart';

import '../../../business_logic/data/constants.dart';
import '../../../widgets/colored_pills.dart/colored_pill_school.dart';
import '../../../widgets/colored_pills.dart/colored_pill_skills.dart';
import '../../../widgets/colored_pills.dart/colored_pill_work.dart';
import '../../../widgets/colored_pills.dart/coloredd_pill_contact.dart';
import '../../../widgets/no_header_table.dart';
import '../../../widgets/separator.dart';
import '../../../widgets/two_column_data_row.dart';
import 'contact.dart';
import 'cv_image.dart';

class CV extends StatelessWidget {
  final double mobileBreakpoints;
  const CV({Key? key, required this.mobileBreakpoints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxWidth);
        bool notDesktop = constraints.maxWidth <= 1500;
        bool mobile = constraints.maxWidth <= mobileBreakpoints;
        if (mobile) {
          return Column(
            children: [
              _firstColumn(context, notDesktop),
              const Separator.vertical(),
              _secondColumn(context, mobile),
            ],
          );
        }
        if (notDesktop) {
          return Column(
            children: [
              _firstColumn(context, notDesktop),
              const Separator.vertical(factor: 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: _contact()),
                  const Separator.horizontal(),
                  Expanded(
                    flex: 2,
                    child: _skills(context),
                  ),
                ],
              ),
            ],
          );
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 5,
              child: _firstColumn(context),
            ),
            const Separator.horizontal(factor: 3),
            Flexible(
              flex: 3,
              child: Transform.translate(
                offset: const Offset(0, -100),
                child: _secondColumn(context),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _firstColumn(BuildContext context, [bool center = false]) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ColoredPillWork(center: center),
          const Separator.vertical(),
          Align(
            alignment: Alignment.centerLeft,
            child: NoHeaderTable(
              rows: List.generate(
                Constants.work.length,
                (index) => TwoColumnDataRow(
                  Constants.work.keys.toList()[index],
                  Constants.work.values.toList()[index],
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
          ),
          const Separator.vertical(factor: 2),
          ColoredPillSchool(center: center),
          const Separator.vertical(),
          Align(
            alignment: Alignment.centerLeft,
            child: NoHeaderTable(
              rows: List.generate(
                Constants.school.length,
                (index) => TwoColumnDataRow(
                  Constants.school.keys.toList()[index],
                  Constants.school.values.toList()[index],
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
          ),
        ],
      );

  Widget _contact([bool mobile = false]) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const ColoredPillContact(),
          const Separator.vertical(factor: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Contact(),
              if (mobile) ...[
                const Separator.horizontal(factor: 2),
                const CVImage(),
              ],
            ],
          ),
        ],
      );

  Widget _skills(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const ColoredPillSkills(),
          const Separator.vertical(factor: 2),
          NoHeaderTable(
            rows: List.generate(
              Constants.skills.length,
              (index) => TwoColumnDataRow(
                Constants.skills.keys.toList()[index],
                Constants.skills.values.toList()[index],
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
        ],
      );

  Widget _secondColumn(BuildContext context, [bool mobile = false]) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _contact(mobile),
          const Separator.vertical(factor: 3),
          _skills(context),
        ],
      );
}
