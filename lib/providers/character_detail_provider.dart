import 'package:flutter/material.dart';
import 'package:rickandmortyapp/data/models/character/character_model.dart';
import 'package:rickandmortyapp/data/models/episode/episode_model.dart';
import 'package:rickandmortyapp/services/episode_service.dart';

class CharacterDetailProvider extends ChangeNotifier {
  final IEpisodeService _episodeService;

  CharacterDetailProvider({IEpisodeService? episodeService})
    : _episodeService = episodeService ?? EpisodeService();
  CharacterModel? _character;
  List<EpisodeModel> _episodes = [];
  bool _isLoading = false;
  String? _error;
  CharacterModel? get character => _character;
  List<EpisodeModel> get episodes => _episodes;
  bool get isLoading => _isLoading;
  String? get error => _error;
  Future<void> loadCharacterDetail(CharacterModel character) async {
    _character = character;
    _isLoading = true;
    _error = null;
    notifyListeners();
    try {
      if (character.episode.isNotEmpty) {
        _episodes = await _episodeService.getEpisodesByUrls(character.episode);
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
    _character = null;
    _episodes = [];
    _isLoading = false;
    _error = null;
  }
}
