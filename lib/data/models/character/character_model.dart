import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
class CharacterModel with _$CharacterModel {
  const factory CharacterModel({
    required int id,
    required String name,
    required String status,
    required String species,
    required String gender,
    required String image,
    required CharacterLocation location,
    required CharacterOrigin origin,
    required List<String> episode,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);
}

@freezed
class CharacterLocation with _$CharacterLocation {
  const factory CharacterLocation({required String name, required String url}) =
      _CharacterLocation;

  factory CharacterLocation.fromJson(Map<String, dynamic> json) =>
      _$CharacterLocationFromJson(json);
}

@freezed
class CharacterOrigin with _$CharacterOrigin {
  const factory CharacterOrigin({required String name, required String url}) =
      _CharacterOrigin;

  factory CharacterOrigin.fromJson(Map<String, dynamic> json) =>
      _$CharacterOriginFromJson(json);
}
