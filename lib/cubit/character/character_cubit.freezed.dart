// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CharacterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<CharacterModel> characters,
      bool hasMore,
      int currentPage,
    )
    loaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<CharacterModel> characters,
      bool hasMore,
      int currentPage,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<CharacterModel> characters,
      bool hasMore,
      int currentPage,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterInitial value) initial,
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterLoaded value) loaded,
    required TResult Function(CharacterError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterInitial value)? initial,
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterLoaded value)? loaded,
    TResult? Function(CharacterError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterInitial value)? initial,
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterLoaded value)? loaded,
    TResult Function(CharacterError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
    CharacterState value,
    $Res Function(CharacterState) then,
  ) = _$CharacterStateCopyWithImpl<$Res, CharacterState>;
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharacterInitialImplCopyWith<$Res> {
  factory _$$CharacterInitialImplCopyWith(
    _$CharacterInitialImpl value,
    $Res Function(_$CharacterInitialImpl) then,
  ) = __$$CharacterInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterInitialImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterInitialImpl>
    implements _$$CharacterInitialImplCopyWith<$Res> {
  __$$CharacterInitialImplCopyWithImpl(
    _$CharacterInitialImpl _value,
    $Res Function(_$CharacterInitialImpl) _then,
  ) : super(_value, _then);
}

/// @nodoc

class _$CharacterInitialImpl implements CharacterInitial {
  const _$CharacterInitialImpl();

  @override
  String toString() {
    return 'CharacterState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<CharacterModel> characters,
      bool hasMore,
      int currentPage,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<CharacterModel> characters,
      bool hasMore,
      int currentPage,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<CharacterModel> characters,
      bool hasMore,
      int currentPage,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterInitial value) initial,
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterLoaded value) loaded,
    required TResult Function(CharacterError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterInitial value)? initial,
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterLoaded value)? loaded,
    TResult? Function(CharacterError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterInitial value)? initial,
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterLoaded value)? loaded,
    TResult Function(CharacterError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CharacterInitial implements CharacterState {
  const factory CharacterInitial() = _$CharacterInitialImpl;
}

/// @nodoc
abstract class _$$CharacterLoadingImplCopyWith<$Res> {
  factory _$$CharacterLoadingImplCopyWith(
    _$CharacterLoadingImpl value,
    $Res Function(_$CharacterLoadingImpl) then,
  ) = __$$CharacterLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterLoadingImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterLoadingImpl>
    implements _$$CharacterLoadingImplCopyWith<$Res> {
  __$$CharacterLoadingImplCopyWithImpl(
    _$CharacterLoadingImpl _value,
    $Res Function(_$CharacterLoadingImpl) _then,
  ) : super(_value, _then);

}

/// @nodoc

class _$CharacterLoadingImpl implements CharacterLoading {
  const _$CharacterLoadingImpl();

  @override
  String toString() {
    return 'CharacterState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<CharacterModel> characters,
      bool hasMore,
      int currentPage,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<CharacterModel> characters,
      bool hasMore,
      int currentPage,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<CharacterModel> characters,
      bool hasMore,
      int currentPage,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterInitial value) initial,
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterLoaded value) loaded,
    required TResult Function(CharacterError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterInitial value)? initial,
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterLoaded value)? loaded,
    TResult? Function(CharacterError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterInitial value)? initial,
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterLoaded value)? loaded,
    TResult Function(CharacterError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharacterLoading implements CharacterState {
  const factory CharacterLoading() = _$CharacterLoadingImpl;
}

/// @nodoc
abstract class _$$CharacterLoadedImplCopyWith<$Res> {
  factory _$$CharacterLoadedImplCopyWith(
    _$CharacterLoadedImpl value,
    $Res Function(_$CharacterLoadedImpl) then,
  ) = __$$CharacterLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CharacterModel> characters, bool hasMore, int currentPage});
}

/// @nodoc
class __$$CharacterLoadedImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterLoadedImpl>
    implements _$$CharacterLoadedImplCopyWith<$Res> {
  __$$CharacterLoadedImplCopyWithImpl(
    _$CharacterLoadedImpl _value,
    $Res Function(_$CharacterLoadedImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? hasMore = null,
    Object? currentPage = null,
  }) {
    return _then(
      _$CharacterLoadedImpl(
        characters: null == characters
            ? _value._characters
            : characters // ignore: cast_nullable_to_non_nullable
                  as List<CharacterModel>,
        hasMore: null == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool,
        currentPage: null == currentPage
            ? _value.currentPage
            : currentPage // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$CharacterLoadedImpl implements CharacterLoaded {
  const _$CharacterLoadedImpl({
    required final List<CharacterModel> characters,
    this.hasMore = true,
    this.currentPage = 1,
  }) : _characters = characters;

  final List<CharacterModel> _characters;
  @override
  List<CharacterModel> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final int currentPage;

  @override
  String toString() {
    return 'CharacterState.loaded(characters: $characters, hasMore: $hasMore, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterLoadedImpl &&
            const DeepCollectionEquality().equals(
              other._characters,
              _characters,
            ) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_characters),
    hasMore,
    currentPage,
  );

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterLoadedImplCopyWith<_$CharacterLoadedImpl> get copyWith =>
      __$$CharacterLoadedImplCopyWithImpl<_$CharacterLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<CharacterModel> characters,
      bool hasMore,
      int currentPage,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(characters, hasMore, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<CharacterModel> characters,
      bool hasMore,
      int currentPage,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(characters, hasMore, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<CharacterModel> characters,
      bool hasMore,
      int currentPage,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(characters, hasMore, currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterInitial value) initial,
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterLoaded value) loaded,
    required TResult Function(CharacterError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterInitial value)? initial,
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterLoaded value)? loaded,
    TResult? Function(CharacterError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterInitial value)? initial,
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterLoaded value)? loaded,
    TResult Function(CharacterError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharacterLoaded implements CharacterState {
  const factory CharacterLoaded({
    required final List<CharacterModel> characters,
    final bool hasMore,
    final int currentPage,
  }) = _$CharacterLoadedImpl;

  List<CharacterModel> get characters;
  bool get hasMore;
  int get currentPage;

  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterLoadedImplCopyWith<_$CharacterLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterErrorImplCopyWith<$Res> {
  factory _$$CharacterErrorImplCopyWith(
    _$CharacterErrorImpl value,
    $Res Function(_$CharacterErrorImpl) then,
  ) = __$$CharacterErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CharacterErrorImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterErrorImpl>
    implements _$$CharacterErrorImplCopyWith<$Res> {
  __$$CharacterErrorImplCopyWithImpl(
    _$CharacterErrorImpl _value,
    $Res Function(_$CharacterErrorImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$CharacterErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CharacterErrorImpl implements CharacterError {
  const _$CharacterErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CharacterState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);


  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterErrorImplCopyWith<_$CharacterErrorImpl> get copyWith =>
      __$$CharacterErrorImplCopyWithImpl<_$CharacterErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<CharacterModel> characters,
      bool hasMore,
      int currentPage,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<CharacterModel> characters,
      bool hasMore,
      int currentPage,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<CharacterModel> characters,
      bool hasMore,
      int currentPage,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterInitial value) initial,
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterLoaded value) loaded,
    required TResult Function(CharacterError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterInitial value)? initial,
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterLoaded value)? loaded,
    TResult? Function(CharacterError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterInitial value)? initial,
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterLoaded value)? loaded,
    TResult Function(CharacterError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CharacterError implements CharacterState {
  const factory CharacterError(final String message) = _$CharacterErrorImpl;

  String get message;

  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterErrorImplCopyWith<_$CharacterErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
