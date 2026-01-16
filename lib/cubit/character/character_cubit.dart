import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rickandmortyapp/data/models/character/character_model.dart';
import 'package:rickandmortyapp/data/models/info/info_model.dart';
import 'package:rickandmortyapp/services/character_services.dart';

part 'character_state.dart';
part 'character_cubit.freezed.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final CharacterService _service;

  CharacterCubit({CharacterService? service})
    : _service = service ?? CharacterService(),
      super(const CharacterState.initial());

  Future<void> fetchCharacters() async {
    emit(const CharacterState.loading());
    try {
      final data = await _service.getCharacters(page: 1);
      final info = InfoModel.fromJson(data['info']);
      final characters = (data['results'] as List)
          .map((json) => CharacterModel.fromJson(json))
          .toList();

      emit(
        CharacterState.loaded(
          characters: characters,
          hasMore: info.next != null,
          currentPage: 1,
        ),
      );
    } catch (e) {
      emit(CharacterState.error(e.toString()));
    }
  }

  Future<void> fetchMoreCharacters() async {
    final currentState = state;
    if (currentState is CharacterLoaded && currentState.hasMore) {
      try {
        final nextPage = currentState.currentPage + 1;
        final data = await _service.getCharacters(page: nextPage);
        final info = InfoModel.fromJson(data['info']);
        final characters = (data['results'] as List)
            .map((json) => CharacterModel.fromJson(json))
            .toList();

        emit(
          currentState.copyWith(
            characters: [...currentState.characters, ...characters],
            hasMore: info.next != null,
            currentPage: nextPage,
          ),
        );
      } catch (e) {
        emit(CharacterState.error(e.toString()));
      }
    }
  }

  Future<void> refreshCharacters() async {
    await fetchCharacters();
  }

  Future<void> searchCharacters(String name) async {
    if (name.isEmpty) {
      await fetchCharacters();
      return;
    }

    emit(const CharacterState.loading());
    try {
      final data = await _service.searchCharacters(name: name);
      final info = InfoModel.fromJson(data['info']);
      final characters = (data['results'] as List)
          .map((json) => CharacterModel.fromJson(json))
          .toList();

      emit(
        CharacterState.loaded(
          characters: characters,
          hasMore: info.next != null,
          currentPage: 1,
        ),
      );
    } catch (e) {
      emit(const CharacterState.error('No characters found'));
    }
  }

  void clearSearch() {
    fetchCharacters();
  }
}
