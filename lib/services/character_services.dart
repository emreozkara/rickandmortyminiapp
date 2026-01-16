import 'package:rickandmortyapp/core/network/http_client.dart';

class CharacterService {
  Future<Map<String, dynamic>> getCharacters({int page = 1}) async {
    final response = await HttpClient.instance.get(
      '/character',
      queryParameters: {'page': page},
    );
    return response.data;
  }

  Future<Map<String, dynamic>> getCharacterById(int id) async {
    final response = await HttpClient.instance.get('/character/$id');
    return response.data;
  }

  Future<dynamic> getMultipleCharacters(List<int> idList) async {
    final response = await HttpClient.instance.get(
      '/character/${idList.join(",")}',
    );
    return response.data;
  }

  Future<Map<String, dynamic>> searchCharacters({
    required String name,
    int page = 1,
  }) async {
    final response = await HttpClient.instance.get(
      '/character',
      queryParameters: {'name': name, 'page': page},
    );
    return response.data;
  }
}
