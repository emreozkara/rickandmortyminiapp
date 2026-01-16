// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LocationItem _$LocationItemFromJson(Map<String, dynamic> json) {
  return _LocationItem.fromJson(json);
}

/// @nodoc
mixin _$LocationItem {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get dimension => throw _privateConstructorUsedError;
  List<String> get residents => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationItemCopyWith<LocationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationItemCopyWith<$Res> {
  factory $LocationItemCopyWith(
    LocationItem value,
    $Res Function(LocationItem) then,
  ) = _$LocationItemCopyWithImpl<$Res, LocationItem>;
  @useResult
  $Res call({
    int id,
    String name,
    String type,
    String dimension,
    List<String> residents,
    String url,
  });
}

/// @nodoc
class _$LocationItemCopyWithImpl<$Res, $Val extends LocationItem>
    implements $LocationItemCopyWith<$Res> {
  _$LocationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? dimension = null,
    Object? residents = null,
    Object? url = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            dimension: null == dimension
                ? _value.dimension
                : dimension // ignore: cast_nullable_to_non_nullable
                      as String,
            residents: null == residents
                ? _value.residents
                : residents // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocationItemImplCopyWith<$Res>
    implements $LocationItemCopyWith<$Res> {
  factory _$$LocationItemImplCopyWith(
    _$LocationItemImpl value,
    $Res Function(_$LocationItemImpl) then,
  ) = __$$LocationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String type,
    String dimension,
    List<String> residents,
    String url,
  });
}

/// @nodoc
class __$$LocationItemImplCopyWithImpl<$Res>
    extends _$LocationItemCopyWithImpl<$Res, _$LocationItemImpl>
    implements _$$LocationItemImplCopyWith<$Res> {
  __$$LocationItemImplCopyWithImpl(
    _$LocationItemImpl _value,
    $Res Function(_$LocationItemImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? dimension = null,
    Object? residents = null,
    Object? url = null,
  }) {
    return _then(
      _$LocationItemImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        dimension: null == dimension
            ? _value.dimension
            : dimension // ignore: cast_nullable_to_non_nullable
                  as String,
        residents: null == residents
            ? _value._residents
            : residents // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationItemImpl implements _LocationItem {
  const _$LocationItemImpl({
    required this.id,
    required this.name,
    required this.type,
    required this.dimension,
    required final List<String> residents,
    required this.url,
  }) : _residents = residents;

  factory _$LocationItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationItemImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String type;
  @override
  final String dimension;
  final List<String> _residents;
  @override
  List<String> get residents {
    if (_residents is EqualUnmodifiableListView) return _residents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_residents);
  }

  @override
  final String url;

  @override
  String toString() {
    return 'LocationItem(id: $id, name: $name, type: $type, dimension: $dimension, residents: $residents, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dimension, dimension) ||
                other.dimension == dimension) &&
            const DeepCollectionEquality().equals(
              other._residents,
              _residents,
            ) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    type,
    dimension,
    const DeepCollectionEquality().hash(_residents),
    url,
  );

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationItemImplCopyWith<_$LocationItemImpl> get copyWith =>
      __$$LocationItemImplCopyWithImpl<_$LocationItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationItemImplToJson(this);
  }
}

abstract class _LocationItem implements LocationItem {
  const factory _LocationItem({
    required final int id,
    required final String name,
    required final String type,
    required final String dimension,
    required final List<String> residents,
    required final String url,
  }) = _$LocationItemImpl;

  factory _LocationItem.fromJson(Map<String, dynamic> json) =
      _$LocationItemImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get dimension;
  @override
  List<String> get residents;
  @override
  String get url;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationItemImplCopyWith<_$LocationItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
