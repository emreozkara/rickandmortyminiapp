import 'package:rickandmortyapp/core/config/http_client.dart';

class CharacterService {
  Future<Map<String, dynamic>> getCharacters({int page = 1}) async {
    return await HttpClient.instance.get(
      '/character',
      queryParameters: {'page': page},
    );
  }

  Future<Map<String, dynamic>> getCharacterById(int id) async {
    return await HttpClient.instance.get('/character/$id');
  }

  Future<dynamic> getMultipleCharacters(List<int> idList) async {
    return await HttpClient.instance.get('/character/${idList.join(",")}');
  }

  Future<Map<String, dynamic>> searchCharacters({
    required String name,
    int page = 1,
  }) async {
    return await HttpClient.instance.get(
      '/character',
      queryParameters: {'name': name, 'page': page},
    );
  }
}
