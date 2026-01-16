import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationItem with _$LocationItem {
  const factory LocationItem({
    required int id,
    required String name,
    required String type,
    required String dimension,
    required List<String> residents,
    required String url,
  }) = _LocationItem;

  factory LocationItem.fromJson(Map<String, dynamic> json) =>
      _$LocationItemFromJson(json);
}
