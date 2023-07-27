class Constants {
  static const String email = "vgerdelmann@icloud.com";
  static const String phone = "01744083363";
  static List<String> characteristics = [
    "leidenschaftliche Softwareenwicklerin",
    "immer für ein Lächeln zu haben",
    "Designerin",
    "Gamerin",
    "Frontend-Dev",
    "Motorsport-begeistert",
    "Firebase-Profi",
    "Fußballerin",
    "Supabase-Profi",
    "teamfähig",
    "Flutter-Liebhaberin",
    "Leseratte",
    "Technik-Freundin",
    "Problem-Löserin"
  ]..shuffle();
  static const List<List<String>> techStack = [
    ["Flutter", "C#", "Java", "... und alles"],
    ["TypeScript", "Angular", "GitHub", "Weitere"],
    ["Firebase", "Supabase", "Figma", "lerne ich schnell!"],
  ];
  static const List<List<String>> paths = [
    ["assets/images/flutter.png", "assets/images/csharp.png", "assets/images/java.png", ""],
    ["assets/images/typescript.webp", "assets/images/angular.png", "assets/images/github.png", ""],
    ["assets/images/firebase.png", "assets/images/supabase.png", "assets/images/figma.webp", ""],
  ];
  static const List<List<String>> techStackMobile = [
    ["Flutter", "C#", "Java"],
    ["TypeScript", "Angular", "GitHub"],
    ["Firebase", "Supabase", "Figma"],
    ["... und alles", "Weitere", "lerne ich schnell!"],
  ];
  static const List<List<String>> pathsMobile = [
    ["assets/images/flutter.png", "assets/images/csharp.png", "assets/images/java.png"],
    ["assets/images/typescript.webp", "assets/images/angular.png", "assets/images/github.png"],
    ["assets/images/firebase.png", "assets/images/supabase.png", "assets/images/figma.webp"],
    ["", "", ""],
  ];

  static Map<String, String> work = {
    "07.2022 - heute": "Flutter Entwickler bei Racler Productions",
    "09.2021 - 06.2022": "Flutter Entwickler bei Racler Productions (Werkstudent)",
    "08.2019 - 09.2020": "Ausbildung zur Fachinformatikerin für Anwendungsentwicklung",
  };

  static Map<String, String> school = {
    "06.2022 - heute": "Studium Softwareengineering (AKAD University)",
    "10.2020 - 05.2022": "Studium der Informatik (Universität Osnabrück)",
    "08.2017 - 07.2018": "Berufliches Gymnasium (BBS Lingen Agrar und Soziales)",
    "08.2014 - 07.2017": "Berufliches Gymnasium (BBS Meppen)",
  };

  static Map<String, String> skills = {
    "IT-Kenntnisse": "Flutter, Angular, C#, Java, TypeScript, GitHub, Firebase, Supabase, Web-Entwicklung, VBA, VBScript",
    "Fremdsprachen": "Englisch, Französisch (DELF A2)",
    "Hobbies": "Programmieren, Lesen, Computerspiele, Motorsport, Fußball",
  };
}
