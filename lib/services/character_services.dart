import 'package:rickandmortyapp/core/config/http_client.dart';
import 'package:rickandmortyapp/data/models/character/character_model.dart';
import 'package:rickandmortyapp/data/models/info/info_model.dart';

class CharacterResponse {
  final List<CharacterModel> characters;
  final InfoModel info;

  CharacterResponse({required this.characters, required this.info});
}

abstract class ICharacterService {
  Future<CharacterResponse> getCharacters({int page = 1});
  Future<CharacterModel> getCharacterById(int id);
  Future<List<CharacterModel>> getMultipleCharacters(List<int> idList);
  Future<CharacterResponse> searchCharacters({
    required String name,
    int page = 1,
  });
}

class CharacterService implements ICharacterService {
  @override
  Future<CharacterResponse> getCharacters({int page = 1}) async {
    try {
      final data = await HttpClient.instance.get(
        '/character',
        queryParameters: {'page': page},
      );
      return CharacterResponse(
        info: InfoModel.fromJson(data['info']),
        characters: (data['results'] as List)
            .map<CharacterModel>((e) => CharacterModel.fromJson(e))
            .toList(),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CharacterModel> getCharacterById(int id) async {
    try {
      final data = await HttpClient.instance.get('/character/$id');
      return CharacterModel.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CharacterModel>> getMultipleCharacters(List<int> idList) async {
    try {
      final data = await HttpClient.instance.get(
        '/character/${idList.join(",")}',
      );
      if (data is List) {
        return data
            .map<CharacterModel>((e) => CharacterModel.fromJson(e))
            .toList();
      }
      return [CharacterModel.fromJson(data)];
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CharacterResponse> searchCharacters({
    required String name,
    int page = 1,
  }) async {
    try {
      final data = await HttpClient.instance.get(
        '/character',
        queryParameters: {'name': name, 'page': page},
      );
      return CharacterResponse(
        info: InfoModel.fromJson(data['info']),
        characters: (data['results'] as List)
            .map<CharacterModel>((e) => CharacterModel.fromJson(e))
            .toList(),
      );
    } catch (e) {
      rethrow;
    }
  }
}
