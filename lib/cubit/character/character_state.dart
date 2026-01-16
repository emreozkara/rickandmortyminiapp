part of 'character_cubit.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.initial() = CharacterInitial;

  const factory CharacterState.loading() = CharacterLoading;

  const factory CharacterState.loaded({
    required List<CharacterModel> characters,
    @Default(true) bool hasMore,
    @Default(1) int currentPage,
  }) = CharacterLoaded;

  const factory CharacterState.error(String message) = CharacterError;
}
