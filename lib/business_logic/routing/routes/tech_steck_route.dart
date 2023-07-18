import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/business_logic/routing/routes/basic_route.dart';
import 'package:me/screens/tech_stack/tech_stack_screen.dart';

class TechStackRoute extends BasicRoute {
  @override
  String get label => "Tech-Stack";

  @override
  Widget build(BuildContext context, GoRouterState state) => TechStackScreen(label: label);
}
