import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_model.freezed.dart';
part 'episode_model.g.dart';

@freezed
class EpisodeModel with _$EpisodeModel {
  const factory EpisodeModel({
    required String id,
    required String name,
    required String episode,
    required List<String> characters,
    required String url,
  }) = _EpisodeModel;

  const EpisodeModel._();

  factory EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelFromJson(json);

  /// Custom factory for API response with episode string conversion
  /// Converts "S01E01" to "Season 1 Episode 1"
  factory EpisodeModel.fromMap(Map<String, dynamic> map) {
    final episodeString = map["episode"] as String;
    final episodeList = episodeString.replaceAll('S', '').split('E');
    final formattedEpisode =
        "Season ${int.parse(episodeList.first)} Episode ${int.parse(episodeList.last)} ";

    return EpisodeModel(
      id: map['id'].toString(),
      name: map['name'] as String,
      episode: formattedEpisode,
      characters: List<String>.from(map['characters'] as List),
      url: map['url'] as String,
    );
  }
}
