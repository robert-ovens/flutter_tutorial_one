// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    PetsListRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PetsListPage(),
      );
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          PetsListRoute.name,
          path: '/',
        )
      ];
}

/// generated route for
/// [PetsListPage]
class PetsListRoute extends PageRouteInfo<void> {
  const PetsListRoute()
      : super(
          PetsListRoute.name,
          path: '/',
        );

  static const String name = 'PetsListRoute';
}
