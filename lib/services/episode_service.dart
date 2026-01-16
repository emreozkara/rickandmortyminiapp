import 'package:rickandmortyapp/core/network/http_client.dart';

class EpisodeService {
  Future<List<dynamic>> getEpisodesByUrls(List<String> urls) async {
    if (urls.isEmpty) return [];

    final ids = urls.map((url) => url.split('/').last).join(',');
    final response = await HttpClient.instance.get('/episode/$ids');

    if (response.data is List) {
      return response.data;
    }
    return [response.data];
  }

  Future<Map<String, dynamic>> getEpisodeById(int id) async {
    final response = await HttpClient.instance.get('/episode/$id');
    return response.data;
  }

  Future<List<dynamic>> getCharactersByUrls(List<String> urls) async {
    if (urls.isEmpty) return [];

    final ids = urls.map((url) => url.split('/').last).join(',');
    final response = await HttpClient.instance.get('/character/$ids');

    if (response.data is List) {
      return response.data;
    }
    return [response.data];
  }
}
