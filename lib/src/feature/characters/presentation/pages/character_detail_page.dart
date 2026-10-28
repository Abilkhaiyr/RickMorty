import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/presentation/scopes/repository_scope.dart';
import '../../../../core/theme/recources.dart';
import '../../../../core/utils/extensions/context_extension.dart';
import '../../bloc/character_detail_cubit.dart';
import '../../models/character.dart';
import '../widgets/character_feedback.dart';
import '../widgets/character_image.dart';
import '../widgets/character_status_badge.dart';
import '../../../app/router/app_router.dart';

@RoutePage()
class CharacterDetailPage extends StatelessWidget {
  const CharacterDetailPage({
    @PathParam('id') required this.id,
    this.character,
    super.key,
  });
  final int id;
  final Character? character;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (_) {
      final cubit = CharacterDetailCubit(
        repository: RepositoryScope.of(context).characterRepository,
        id: id,
        initial: character,
      );
      if (character == null) cubit.load();
      return cubit;
    },
    child: const CharacterDetailView(),
  );
}

class CharacterDetailView extends StatelessWidget {
  const CharacterDetailView({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leadingWidth: 72,
      leading: IconButton(
        tooltip: MaterialLocalizations.of(context).backButtonTooltip,
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          final router = context.router.root;
          if (router.canPop()) {
            router.maybePop();
          } else {
            router.replaceAll([const LauncherRoute()]);
          }
        },
      ),
      titleSpacing: 14,
      title: Text(
        context.localized.characterProfile,
        style: const TextStyle(
          color: AppColors.explorerAccent,
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    body: SafeArea(
      top: false,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: BlocBuilder<CharacterDetailCubit, CharacterDetailState>(
            builder: (context, state) {
              if (state.loading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.error != null) {
                return SingleChildScrollView(
                  child: CharacterFeedback(
                    isError: true,
                    title: context.localized.detailErrorTitle,
                    message: context.localized.detailErrorHint,
                    actionLabel: context.localized.tryAgain,
                    onAction: () => context.read<CharacterDetailCubit>().load(),
                  ),
                );
              }
              final value = state.character;
              if (value == null) return const SizedBox.shrink();
              return ListView(
                padding: const EdgeInsets.fromLTRB(22, 8, 22, 32),
                children: [
                  Container(
                    height: 270,
                    padding: const EdgeInsets.only(top: 28),
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      color: AppColors.profileBackground,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Hero(
                      tag: 'character-${value.id}',
                      child: CharacterImage(
                        url: value.image,
                        name: value.name,
                        size: 170,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          value.name,
                          style: const TextStyle(
                            fontSize: 31,
                            height: 1.5,
                            letterSpacing: -.6,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        CharacterStatusBadge(
                          status: value.status,
                          showDot: true,
                        ),
                        const SizedBox(height: 30),
                        Text(
                          context.localized.identityLabel,
                          style: const TextStyle(
                            color: AppColors.explorerAccent,
                            fontSize: 12,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  _IdentityTile(
                    label: context.localized.species,
                    value: value.species,
                  ),
                  const SizedBox(height: 14),
                  _IdentityTile(
                    label: context.localized.origin,
                    value: value.origin,
                  ),
                  const SizedBox(height: 14),
                  _IdentityTile(
                    label: context.localized.currentLocation,
                    value: value.location,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    ),
  );
}

class _IdentityTile extends StatelessWidget {
  const _IdentityTile({required this.label, required this.value});
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) => Container(
    constraints: const BoxConstraints(minHeight: 71),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    decoration: BoxDecoration(
      color: AppColors.explorerSurface,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: AppColors.explorerMuted,
            fontSize: 12,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(
            fontSize: 17,
            height: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
