import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/business_logic/routing/routes/basic_route.dart';
import 'package:me/screens/personal_story_screen.dart';

class PersonalStoryRoute extends BasicRoute {
  @override
  String get label => "Meine Geschichte";

  @override
  Widget build(BuildContext context, GoRouterState state) => PersonalStoryScreen(label: label);
}
