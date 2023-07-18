import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/screens/personal_information_screen.dart';

import 'basic_route.dart';

class PersonalInformationRoute extends BasicRoute {
  @override
  String get label => "Persönliche Informationen";

  @override
  Widget build(BuildContext context, GoRouterState state) => PersonalInformationScreen(label: label);
}
