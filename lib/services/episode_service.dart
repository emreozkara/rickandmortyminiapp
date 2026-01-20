import 'package:rickandmortyapp/core/config/http_client.dart';
import 'package:rickandmortyapp/data/models/character/character_model.dart';
import 'package:rickandmortyapp/data/models/episode/episode_model.dart';

abstract class IEpisodeService {
  Future<List<EpisodeModel>> getEpisodesByUrls(List<String> urls);
  Future<EpisodeModel> getEpisodeById(int id);
  Future<List<CharacterModel>> getCharactersByUrls(List<String> urls);
}

class EpisodeService implements IEpisodeService {
  @override
  Future<List<EpisodeModel>> getEpisodesByUrls(List<String> urls) async {
    if (urls.isEmpty) return [];

    try {
      final ids = urls.map((url) => url.split('/').last).join(',');
      final data = await HttpClient.instance.get('/episode/$ids');

      if (data is List) {
        return data.map<EpisodeModel>((e) => EpisodeModel.fromMap(e)).toList();
      }
      return [EpisodeModel.fromMap(data)];
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<EpisodeModel> getEpisodeById(int id) async {
    try {
      final data = await HttpClient.instance.get('/episode/$id');
      return EpisodeModel.fromMap(data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CharacterModel>> getCharactersByUrls(List<String> urls) async {
    if (urls.isEmpty) return [];

    try {
      final ids = urls.map((url) => url.split('/').last).join(',');
      final data = await HttpClient.instance.get('/character/$ids');

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
}
