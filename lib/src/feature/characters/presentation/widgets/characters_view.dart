import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/recources.dart';
import '../../../../core/utils/extensions/context_extension.dart';
import '../../../app/router/app_router.dart';
import '../../bloc/characters_cubit.dart';
import 'catalogue_navigation_bar.dart';
import 'character_card.dart';
import 'character_feedback.dart';
import 'characters_skeleton.dart';
import 'pagination_feedback.dart';

class CharactersView extends StatefulWidget {
  const CharactersView({super.key});
  @override
  State<CharactersView> createState() => _CharactersViewState();
}

class _CharactersViewState extends State<CharactersView> {
  final _scrollController = ScrollController();
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController(
      text: context.read<CharactersCubit>().state.query,
    );
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.hasClients &&
        _scrollController.position.extentAfter < 300 &&
        context.read<CharactersCubit>().state.error == null) {
      unawaited(context.read<CharactersCubit>().loadNext());
    }
  }

  void _search(String value) {
    context.read<CharactersCubit>().search(value);
    if (_scrollController.hasClients) _scrollController.jumpTo(0);
  }

  void _clear() {
    _searchController.clear();
    _search('');
    FocusScope.of(context).unfocus();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AnnotatedRegion<SystemUiOverlayStyle>(
    value: SystemUiOverlayStyle.light,
    child: Scaffold(
      bottomNavigationBar: const CatalogueNavigationBar(),
      body: SafeArea(
        bottom: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: BlocConsumer<CharactersCubit, CharactersState>(
              listener: (context, state) {
                if (!state.loading &&
                    state.error == null &&
                    state.nextPage != null) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    if (mounted) _onScroll();
                  });
                }
              },
              builder: (context, state) {
                final searching = state.query.isNotEmpty;
                return CustomScrollView(
                  key: const PageStorageKey('characters'),
                  controller: _scrollController,
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(24, 13, 24, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'RICK  /  MORTY',
                              style: TextStyle(
                                color: AppColors.explorerAccent,
                                fontSize: 12,
                                height: 1.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                searching
                                    ? context.localized.searchTitle
                                    : context.localized.explorerTitle,
                                style: const TextStyle(
                                  fontSize: 31,
                                  height: 1.2,
                                  letterSpacing: -.6,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              searching
                                  ? context.localized.searchSubtitle
                                  : context.localized.explorerSubtitle,
                              style: const TextStyle(
                                color: AppColors.explorerMuted,
                                fontSize: 13,
                                height: 1.5,
                              ),
                            ),
                            const SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: TextField(
                          controller: _searchController,
                          style: const TextStyle(fontSize: 14),
                          textInputAction: TextInputAction.search,
                          onSubmitted: (_) => FocusScope.of(context).unfocus(),
                          decoration: InputDecoration(
                            hintText: context.localized.searchHint,
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 24,
                              color: AppColors.explorerAccent,
                            ),
                            prefixIconConstraints: const BoxConstraints(
                              minWidth: 57,
                              minHeight: 50,
                            ),
                            suffixIcon: searching
                                ? IconButton(
                                    tooltip: context.localized.clearSearch,
                                    onPressed: _clear,
                                    icon: const Icon(
                                      Icons.close,
                                      color: AppColors.explorerMuted,
                                      size: 20,
                                    ),
                                  )
                                : null,
                          ),
                          onChanged: _search,
                        ),
                      ),
                    ),
                    if (state.characters.isEmpty && !state.loading)
                      SliverToBoxAdapter(
                        child: CharacterFeedback(
                          isError: state.error != null,
                          title: state.error != null
                              ? context.localized.networkErrorTitle
                              : context.localized.noCharactersFound,
                          message: state.error != null
                              ? context.localized.networkErrorHint
                              : context.localized.emptySearchHint,
                          actionLabel: state.error != null
                              ? context.localized.tryAgain
                              : context.localized.clearSearch,
                          onAction: state.error != null
                              ? () => context.read<CharactersCubit>().loadNext()
                              : _clear,
                        ),
                      )
                    else ...[
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24, 20, 24, 12),
                          child: state.characters.isEmpty
                              ? const SizedBox(height: 18)
                              : Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        searching
                                            ? context.localized.resultsFor(
                                                state.query.toUpperCase(),
                                              )
                                            : context.localized.charactersLabel,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          color: AppColors.explorerMuted,
                                          fontSize: 12,
                                          height: 1.5,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Text(
                                      searching
                                          ? context.localized.showingMatches
                                          : context.localized.discoveredCount(
                                              state.totalCount,
                                            ),
                                      style: const TextStyle(
                                        color: AppColors.explorerAccent,
                                        fontSize: 12,
                                        height: 1.5,
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                      ),
                      if (state.characters.isEmpty)
                        const SliverPadding(
                          padding: EdgeInsets.symmetric(horizontal: 22),
                          sliver: SliverToBoxAdapter(
                            child: CharactersSkeleton(),
                          ),
                        )
                      else
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(horizontal: 22),
                          sliver: SliverList.builder(
                            itemCount: state.characters.length + 1,
                            itemBuilder: (context, index) {
                              if (index == state.characters.length) {
                                return PaginationFeedback(
                                  loading: state.loading,
                                  hasError: state.error != null,
                                  onRetry: () => context
                                      .read<CharactersCubit>()
                                      .loadNext(),
                                );
                              }
                              final character = state.characters[index];
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: CharacterCard(
                                  character: character,
                                  searchResult: searching,
                                  onTap: () {
                                    FocusScope.of(context).unfocus();
                                    context.router.root.push(
                                      CharacterDetailRoute(
                                        id: character.id,
                                        character: character,
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                    ],
                  ],
                );
              },
            ),
          ),
        ),
      ),
    ),
  );
}
