import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/presentation/scopes/repository_scope.dart';
import '../../bloc/characters_cubit.dart';
import '../widgets/characters_view.dart';

@RoutePage()
class CharactersPage extends StatelessWidget {
  const CharactersPage({super.key});
  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (_) => CharactersCubit(
      repository: RepositoryScope.of(context).characterRepository,
    )..loadNext(),
    child: const CharactersView(),
  );
}
