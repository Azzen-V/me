import 'package:flutter/material.dart';
import 'package:me/business_logic/routing/routes.dart';
import 'package:me/widgets/bordered_image.dart';
import 'package:me/widgets/large_text.dart';
import 'package:me/widgets/nav_bar.dart';
import 'package:me/widgets/separator.dart';

import '../personal_information/social.dart';

class PersonalStoryView extends StatelessWidget {
  const PersonalStoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool break1 = constraints.maxWidth >= 950;
        bool break2 = constraints.maxWidth >= 870;
        return Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1350),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                NavBar(
                  current: Routes.story,
                  mobile: constraints.maxWidth <= 550,
                ),
                const Separator.vertical(factor: 3),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (break1) ...[
                      Flexible(child: _image1),
                      const Separator.horizontal(factor: 3),
                    ],
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Theme.of(context).colorScheme.inverseSurface.withOpacity(0.8),
                        ),
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Also, das bin ich!",
                              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                    color: Theme.of(context).colorScheme.surface,
                                  ),
                            ),
                            const LargeText("Mein Name ist Vanessa Gerdelmann, ich bin 25 Jahre alt."),
                            const LargeText("Schon früh entdeckte ich meine Leidenschaft für die Programmierung. "
                                "Ich war gerade einmal 14 oder 15 Jahre alt, als ich mit Hilfe eines YouTube Tutorials "
                                "das Spiel 'Pong' in C++ entwickelte."),
                            const LargeText("Anschließend lernte ich die Web-Entwicklung lieben. Die Grundlagen "
                                "erlernte ich in der Schule, doch diese reichten schon bald nicht mehr aus, "
                                "um meine Wissbegierde zu befriedigen."),
                            const LargeText("Nach meinem Abitur fing ich dann eine Ausbildung zur "
                                "Fachinformatikerin für Anwendungsentwicklung an. Dann kam COVID - und ich dachte mir: "
                                "'Jetzt oder nie!' Vor der Pandemie war es mir aus logistischen Gründen nur schwer "
                                "möglich, ein Informatik-Studium zu beginnen, weil ich nicht einfach in eine andere "
                                "Stadt ziehen konnte. Die Pandemie eröffnete mir die Möglichkeit, meinen lang ersehnten "
                                "Traum zu erfüllen. Ein Studium im Home Office."),
                            const LargeText("Ich ergatterte einen Job bei Racler Productions, einem kleinen Start-Up "
                                "aus Melle, die individuelle Softwareentwicklung nach kundenspezifischen Anforderungen "
                                "umsetzen. Dort arbeite ich zunächst mit Angular, wurde dann allerdings schnell in der "
                                "Flutter-Entwicklung gebraucht und lernte sie schnell zu lieben."),
                            const LargeText("Die Pandemie endete. Mit den Inhalten meines Studiums nicht so "
                                "wirklich zufrieden, weil sie allesamt sehr theoretisch waren und betrachtend der "
                                "Tatsache, dass das Leben sehr viel teurer geworden war in den letzten Jahren, "
                                "wechselte ich in ein Fernstudium, um nebenberuflich neben meiner mittlerweile "
                                "35-Stunden-Woche zu studieren."),
                            const LargeText("Das Studium vermittelt mir nun endlich die theoretischen Hintergründe "
                                "zu den Themen, die ich längst praktisch umsetzte und vertieft Praxis-Wissen mit "
                                "praktischen Projekten."),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Separator.vertical(factor: 3),
                if (!break2) ...[
                  Row(
                    children: [
                      Flexible(child: _image1),
                      const Separator.horizontal(factor: 3),
                      Flexible(child: _image2),
                    ],
                  ),
                  const Separator.vertical(factor: 3),
                ],
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Theme.of(context).colorScheme.inverseSurface.withOpacity(0.8),
                        ),
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...const [
                              LargeText("Zu meinen Aufgaben bei Racler Prodcutions gehörte neben der Flutter- "
                                  "und Angular-Entwickung auch das Erstellen von Designs. Hier erkannte "
                                  "ich eine weitere meiner Leidenschaften: Das kreative Erschaffen von Nutzer-"
                                  "Oberflächen verbesserte nicht nur meinen Workflow in der Entwicklung, "
                                  "weil nun endlich ein Plan, eine Anleitung für das zu entwickelnde Feature "
                                  "existierte, nein es war auch eine willkommene Abwechslung für den Alltag."),
                              Separator.vertical(factor: 0.25),
                              LargeText("Da wir backendseitig sowohl Firebase als auch Supabase verwendeten, "
                                  "kann ich mit beidem umgehen und schnell alternative SQL- und NoSQL-Systeme "
                                  "adaptieren."),
                              Separator.vertical(factor: 0.25),
                              LargeText("Ich war sowohl für iOS- als auch für Android-Releases "
                                  "mitverantwortlich und kenne die üblichen Tücken und Problemchen, die sich "
                                  "einem Entwickler dabei gerne mal in den Weg stellen."),
                              Separator.vertical(factor: 0.25),
                              LargeText("Generell erlerne ich schnell neue Technologien und lege großen Wert "
                                  "auf qualitativ hochwertigen Code."),
                              Separator.vertical(factor: 0.25),
                              LargeText("Mein Weg ist vielleicht nicht der Musterweg, den man sich so vorstellt, "
                                  "wenn man sein Leben plant. Aber es ist der Weg, der für mich funktioniert "
                                  "und er hat mich gelehrt, schnell und einfallsreich mit Problematiken umzugehen."),
                              Separator.vertical(factor: 5),
                              LargeText("Habe ich Sie überzeugt? Dann melden Sie sich gerne für ein persönliches "
                                  "Vorstellungsgespräch bei mir. Ich bin sicher, dass ich eine Bereicherung für "
                                  "Ihr Unternehmen sein werde!"),
                              Separator.vertical(),
                            ],
                            Social(mainAxisAlignment: !break2 ? MainAxisAlignment.center : MainAxisAlignment.start),
                          ],
                        ),
                      ),
                    ),
                    if (break2) ...[
                      const Separator.horizontal(factor: 3),
                      Flexible(child: _image2),
                    ],
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget get _image1 => const BorderedImage(path: 'images/me_2.jpg');
  Widget get _image2 => const BorderedImage(path: 'images/me_1.jpg');
}
