// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $mainRoute,
    ];

RouteBase get $mainRoute => GoRouteData.$route(
      path: '/',
      factory: $MainRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'info',
          factory: $PersonalInformationRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'my-story',
          factory: $PersonalStoryRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'tech-stack',
          factory: $TechStackRouteExtension._fromState,
        ),
      ],
    );

extension $MainRouteExtension on MainRoute {
  static MainRoute _fromState(GoRouterState state) => MainRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PersonalInformationRouteExtension on PersonalInformationRoute {
  static PersonalInformationRoute _fromState(GoRouterState state) =>
      PersonalInformationRoute();

  String get location => GoRouteData.$location(
        '/info',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PersonalStoryRouteExtension on PersonalStoryRoute {
  static PersonalStoryRoute _fromState(GoRouterState state) =>
      PersonalStoryRoute();

  String get location => GoRouteData.$location(
        '/my-story',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TechStackRouteExtension on TechStackRoute {
  static TechStackRoute _fromState(GoRouterState state) => TechStackRoute();

  String get location => GoRouteData.$location(
        '/tech-stack',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
