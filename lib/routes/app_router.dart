import 'package:auto_route/auto_route.dart';
import 'package:demo_one/features/pets_list/widgets/widgets.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: PetsListPage, initial: true),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
