// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterModelImpl _$$CharacterModelImplFromJson(Map<String, dynamic> json) =>
    _$CharacterModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      gender: json['gender'] as String,
      image: json['image'] as String,
      location: CharacterLocation.fromJson(
        json['location'] as Map<String, dynamic>,
      ),
      origin: CharacterOrigin.fromJson(json['origin'] as Map<String, dynamic>),
      episode: (json['episode'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CharacterModelImplToJson(
  _$CharacterModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'status': instance.status,
  'species': instance.species,
  'gender': instance.gender,
  'image': instance.image,
  'location': instance.location,
  'origin': instance.origin,
  'episode': instance.episode,
};

_$CharacterLocationImpl _$$CharacterLocationImplFromJson(
  Map<String, dynamic> json,
) => _$CharacterLocationImpl(
  name: json['name'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$$CharacterLocationImplToJson(
  _$CharacterLocationImpl instance,
) => <String, dynamic>{'name': instance.name, 'url': instance.url};

_$CharacterOriginImpl _$$CharacterOriginImplFromJson(
  Map<String, dynamic> json,
) => _$CharacterOriginImpl(
  name: json['name'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$$CharacterOriginImplToJson(
  _$CharacterOriginImpl instance,
) => <String, dynamic>{'name': instance.name, 'url': instance.url};
