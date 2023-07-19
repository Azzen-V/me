import 'package:flutter/material.dart';

import '../../widgets/colored_pill.dart';
import '../../widgets/icon_three_lines.dart';
import '../../widgets/no_header_table.dart';
import '../../widgets/separator.dart';
import '../../widgets/two_column_data_row.dart';

class CV extends StatelessWidget {
  const CV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 1500) {
          return Column(
            children: [
              _firstColumn(context),
              const Separator.vertical(factor: 2),
              _secondColumn(context),
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

  Widget _firstColumn(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const ColoredPill.filled(
            "Berufliche Tätigkeit",
            textAlign: TextAlign.end,
          ),
          const Separator.vertical(),
          NoHeaderTable(
            rows: [
              TwoColumnDataRow(
                "Juli 2022 - heute",
                "Flutter Entwickler bei Racler Productions",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TwoColumnDataRow(
                "September 2021 - Juni 2022",
                "Flutter Entwickler bei Racler Productions (Werkstudent)",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TwoColumnDataRow(
                "August 2019 - September 2020",
                "Ausbildung zur Fachinformatikerin für Anwendungsentwicklung",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          const Separator.vertical(factor: 2),
          const ColoredPill.filled(
            "Schulische Bildung",
            textAlign: TextAlign.end,
          ),
          const Separator.vertical(),
          NoHeaderTable(
            rows: [
              TwoColumnDataRow(
                "Juni 2022 - heute",
                "Studium Softwareengineering (AKAD University)",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TwoColumnDataRow(
                "Oktober 2020 - Mai 2022",
                "Studium der Informatik (Universität Osnabrück)",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TwoColumnDataRow(
                "August 2017 - Juli 2018",
                "Berufliches Gymnasium (BBS Lingen Agrar und Soziales)",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TwoColumnDataRow(
                "August 2014 - Juli 2017",
                "Berufliches Gymnasium (BBS Meppen)",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ],
      );

  Widget get _contact => const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ColoredPill.bordered(
            "Kontaktdaten",
            textAlign: TextAlign.center,
          ),
          Separator.vertical(factor: 2),
          IconThreeLines(
            icon: Icons.location_on,
            title: "Adresse",
            line1: "Brunnenstr. 39",
            line2: "49809 Lingen",
          ),
          Separator.vertical(),
          IconThreeLines(
            icon: Icons.mail,
            title: "E-Mail",
            line1: "vgerdelmann@icloud.com",
          ),
          Separator.vertical(),
          IconThreeLines(
            icon: Icons.phone,
            title: "Telefon",
            line1: "01744083363",
          ),
        ],
      );

  Widget _skills(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const ColoredPill.bordered(
            "Kenntnisse und Interessen",
            textAlign: TextAlign.center,
          ),
          const Separator.vertical(factor: 2),
          NoHeaderTable(
            rows: [
              TwoColumnDataRow(
                "IT-Kentnisse",
                "Flutter, Angular, C#, Java, TypeScript, GitHub, Firebase, Supabase, Web-Entwicklung, VBA, VBScript",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TwoColumnDataRow(
                "Fremdsprachen",
                "Englisch, Französisch (DELF A2)",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TwoColumnDataRow(
                "Hobbies",
                "Programmieren, Lesen, Computerspiele, Motorsport, Fußball",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ],
      );

  Widget _secondColumn(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _contact,
          const Separator.vertical(factor: 3),
          _skills(context),
        ],
      );
}
