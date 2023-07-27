// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class Utils {
  static void launchUrl(String url) => html.window.open(url, 'new tab');
}
