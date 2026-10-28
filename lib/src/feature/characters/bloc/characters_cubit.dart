import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/rest_client/src/exception/rest_client_exception.dart';
import '../data/character_repository.dart';
import '../models/character.dart';
part 'characters_cubit.freezed.dart';

@freezed
abstract class CharactersState with _$CharactersState {
  const factory CharactersState({
    @Default([]) List<Character> characters,
    @Default('') String query,
    @Default(false) bool loading,
    @Default(1) int? nextPage,
    @Default(0) int totalCount,
    String? error,
  }) = _CharactersState;
}

final class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit({required ICharacterRepository repository})
    : _repository = repository,
      super(const CharactersState());
  final ICharacterRepository _repository;
  Timer? _debounce;
  int _generation = 0;
  void search(String value) {
    final query = value.trim();
    if (query == state.query) return;
    _debounce?.cancel();
    _generation++;
    emit(CharactersState(query: query, loading: true));
    _debounce = Timer(const Duration(milliseconds: 350), () => _load(1));
  }

  Future<void> loadNext() async {
    if (state.loading || state.nextPage == null) return;
    await _load(state.nextPage!);
  }

  Future<void> _load(int page) async {
    final generation = _generation;
    emit(state.copyWith(loading: true, error: null));
    try {
      final result = await _repository.getCharacters(
        page: page,
        name: state.query,
      );
      if (isClosed || generation != _generation) return;
      emit(
        state.copyWith(
          characters: [...state.characters, ...result.characters],
          nextPage: result.nextPage,
          totalCount: result.totalCount,
          loading: false,
        ),
      );
    } catch (error) {
      if (isClosed || generation != _generation) return;
      emit(
        state.copyWith(
          loading: false,
          error: error is RestClientException
              ? error.message
              : 'Unable to load characters. Please try again.',
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _debounce?.cancel();
    _generation++;
    return super.close();
  }
}
