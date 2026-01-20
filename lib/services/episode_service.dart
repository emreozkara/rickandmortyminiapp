import 'package:rickandmortyapp/core/config/http_client.dart';

class EpisodeService {
  Future<List<dynamic>> getEpisodesByUrls(List<String> urls) async {
    if (urls.isEmpty) return [];

    final ids = urls.map((url) => url.split('/').last).join(',');
    final data = await HttpClient.instance.get('/episode/$ids');

    if (data is List) {
      return data;
    }
    return [data];
  }

  Future<Map<String, dynamic>> getEpisodeById(int id) async {
    return await HttpClient.instance.get('/episode/$id');
  }

  Future<List<dynamic>> getCharactersByUrls(List<String> urls) async {
    if (urls.isEmpty) return [];

    final ids = urls.map((url) => url.split('/').last).join(',');
    final data = await HttpClient.instance.get('/character/$ids');

    if (data is List) {
      return data;
    }
    return [data];
  }
}
