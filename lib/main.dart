import 'package:demo_one/mappers/mappers.dart';
import 'package:demo_one/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petstore_client/petstore_client.dart';

import 'routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(providers: [
      RepositoryProvider<PetstoreClient>(
        create: (context) {
          return PetstoreClient();
        },
      ),
      RepositoryProvider(
        create: (context) {
          return PetMapper();
        },
      ),
      RepositoryProvider<PetsService>(
        create: (context) {
          return PetsService(
              client: context.read<PetstoreClient>(),
              petMapper: context.read<PetMapper>());
        },
      )
    ], child: AppRoot());
  }
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();

    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
