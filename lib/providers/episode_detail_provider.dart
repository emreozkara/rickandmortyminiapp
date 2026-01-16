import 'package:flutter/material.dart';
import 'package:rickandmortyapp/data/models/character/character_model.dart';
import 'package:rickandmortyapp/data/models/episode/episode_model.dart';
import 'package:rickandmortyapp/services/episode_service.dart';

class EpisodeDetailProvider extends ChangeNotifier {
  final EpisodeService _episodeService;

  EpisodeDetailProvider({EpisodeService? episodeService})
    : _episodeService = episodeService ?? EpisodeService();
  EpisodeModel? _episode;
  List<CharacterModel> _characters = [];
  bool _isLoading = false;
  String? _error;
  EpisodeModel? get episode => _episode;
  List<CharacterModel> get characters => _characters;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadEpisodeDetail(EpisodeModel episode) async {
    _episode = episode;
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      if (episode.characters.isNotEmpty) {
        final charactersData = await _episodeService.getCharactersByUrls(
          episode.characters,
        );
        _characters = charactersData
            .map((e) => CharacterModel.fromJson(e))
            .toList();
      }

      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }

  void clear() {
    _episode = null;
    _characters = [];
    _isLoading = false;
    _error = null;
  }
}
