import 'package:demo_one/features/pets_list/pets_list.dart';
import 'package:demo_one/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PetsListPage extends StatelessWidget {
  const PetsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PetsListBloc(petsService: context.read<PetsService>())
            ..add(PetsListInitialised()),
      child: const _PetsListView(),
    );
  }
}

class _PetsListView extends StatelessWidget {
  const _PetsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PetsListBloc, PetsListState>(
      builder: (context, state) {
        if (state.status != PetsListStatus.ready) {
          return CircularProgressIndicator();
        }
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: state.pets.length,
              itemBuilder: (context, index) {
                return Text(state.pets.elementAt(index).name);
              },
            ),
          ),
        );
      },
    );
  }
}
