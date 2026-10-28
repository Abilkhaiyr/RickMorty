import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/character_repository.dart';
import '../models/character.dart';

part 'character_detail_cubit.freezed.dart';

@freezed
abstract class CharacterDetailState with _$CharacterDetailState {
  const factory CharacterDetailState({
    Character? character,
    @Default(false) bool loading,
    String? error,
  }) = _CharacterDetailState;
}

final class CharacterDetailCubit extends Cubit<CharacterDetailState> {
  CharacterDetailCubit({
    required ICharacterRepository repository,
    required this.id,
    Character? initial,
  }) : _repository = repository,
       super(CharacterDetailState(character: initial));
  final ICharacterRepository _repository;
  final int id;
  Future<void> load() async {
    if (state.loading) return;
    emit(const CharacterDetailState(loading: true));
    try {
      final character = await _repository.getCharacter(id);
      if (!isClosed) emit(CharacterDetailState(character: character));
    } catch (_) {
      if (!isClosed) {
        emit(
          const CharacterDetailState(error: 'Unable to load this character.'),
        );
      }
    }
  }
}
