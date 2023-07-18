import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/business_logic/routing/routes/personal_information_route.dart';
import 'package:me/business_logic/routing/routes/personal_story_route.dart';
import 'package:me/screens/main_screen.dart';

import 'routes/basic_route.dart';

part 'main_route.g.dart';

@TypedGoRoute<MainRoute>(
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<PersonalInformationRoute>(
      path: 'info',
    ),
    TypedGoRoute<PersonalStoryRoute>(
      path: 'my-story',
    ),
  ],
)
class MainRoute extends BasicRoute {
  @override
  final String label = "Hey, ich bin Vanessa!";

  @override
  Widget build(BuildContext context, GoRouterState state) => MainScreen(label: label);
}
