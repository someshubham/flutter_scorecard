// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScoreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ScoreCard score) loaded,
    required TResult Function(String msg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ScoreCard score)? loaded,
    TResult? Function(String msg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ScoreCard score)? loaded,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScoreInitial value) initial,
    required TResult Function(ScoreLoading value) loading,
    required TResult Function(ScoreLoaded value) loaded,
    required TResult Function(ScoreError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScoreInitial value)? initial,
    TResult? Function(ScoreLoading value)? loading,
    TResult? Function(ScoreLoaded value)? loaded,
    TResult? Function(ScoreError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScoreInitial value)? initial,
    TResult Function(ScoreLoading value)? loading,
    TResult Function(ScoreLoaded value)? loaded,
    TResult Function(ScoreError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreStateCopyWith<$Res> {
  factory $ScoreStateCopyWith(
          ScoreState value, $Res Function(ScoreState) then) =
      _$ScoreStateCopyWithImpl<$Res, ScoreState>;
}

/// @nodoc
class _$ScoreStateCopyWithImpl<$Res, $Val extends ScoreState>
    implements $ScoreStateCopyWith<$Res> {
  _$ScoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScoreInitialCopyWith<$Res> {
  factory _$$ScoreInitialCopyWith(
          _$ScoreInitial value, $Res Function(_$ScoreInitial) then) =
      __$$ScoreInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScoreInitialCopyWithImpl<$Res>
    extends _$ScoreStateCopyWithImpl<$Res, _$ScoreInitial>
    implements _$$ScoreInitialCopyWith<$Res> {
  __$$ScoreInitialCopyWithImpl(
      _$ScoreInitial _value, $Res Function(_$ScoreInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScoreInitial implements ScoreInitial {
  const _$ScoreInitial();

  @override
  String toString() {
    return 'ScoreState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScoreInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ScoreCard score) loaded,
    required TResult Function(String msg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ScoreCard score)? loaded,
    TResult? Function(String msg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ScoreCard score)? loaded,
    TResult Function(String msg)? error,
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
    required TResult Function(ScoreInitial value) initial,
    required TResult Function(ScoreLoading value) loading,
    required TResult Function(ScoreLoaded value) loaded,
    required TResult Function(ScoreError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScoreInitial value)? initial,
    TResult? Function(ScoreLoading value)? loading,
    TResult? Function(ScoreLoaded value)? loaded,
    TResult? Function(ScoreError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScoreInitial value)? initial,
    TResult Function(ScoreLoading value)? loading,
    TResult Function(ScoreLoaded value)? loaded,
    TResult Function(ScoreError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ScoreInitial implements ScoreState {
  const factory ScoreInitial() = _$ScoreInitial;
}

/// @nodoc
abstract class _$$ScoreLoadingCopyWith<$Res> {
  factory _$$ScoreLoadingCopyWith(
          _$ScoreLoading value, $Res Function(_$ScoreLoading) then) =
      __$$ScoreLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScoreLoadingCopyWithImpl<$Res>
    extends _$ScoreStateCopyWithImpl<$Res, _$ScoreLoading>
    implements _$$ScoreLoadingCopyWith<$Res> {
  __$$ScoreLoadingCopyWithImpl(
      _$ScoreLoading _value, $Res Function(_$ScoreLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScoreLoading implements ScoreLoading {
  const _$ScoreLoading();

  @override
  String toString() {
    return 'ScoreState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScoreLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ScoreCard score) loaded,
    required TResult Function(String msg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ScoreCard score)? loaded,
    TResult? Function(String msg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ScoreCard score)? loaded,
    TResult Function(String msg)? error,
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
    required TResult Function(ScoreInitial value) initial,
    required TResult Function(ScoreLoading value) loading,
    required TResult Function(ScoreLoaded value) loaded,
    required TResult Function(ScoreError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScoreInitial value)? initial,
    TResult? Function(ScoreLoading value)? loading,
    TResult? Function(ScoreLoaded value)? loaded,
    TResult? Function(ScoreError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScoreInitial value)? initial,
    TResult Function(ScoreLoading value)? loading,
    TResult Function(ScoreLoaded value)? loaded,
    TResult Function(ScoreError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ScoreLoading implements ScoreState {
  const factory ScoreLoading() = _$ScoreLoading;
}

/// @nodoc
abstract class _$$ScoreLoadedCopyWith<$Res> {
  factory _$$ScoreLoadedCopyWith(
          _$ScoreLoaded value, $Res Function(_$ScoreLoaded) then) =
      __$$ScoreLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ScoreCard score});
}

/// @nodoc
class __$$ScoreLoadedCopyWithImpl<$Res>
    extends _$ScoreStateCopyWithImpl<$Res, _$ScoreLoaded>
    implements _$$ScoreLoadedCopyWith<$Res> {
  __$$ScoreLoadedCopyWithImpl(
      _$ScoreLoaded _value, $Res Function(_$ScoreLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
  }) {
    return _then(_$ScoreLoaded(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as ScoreCard,
    ));
  }
}

/// @nodoc

class _$ScoreLoaded implements ScoreLoaded {
  const _$ScoreLoaded({required this.score});

  @override
  final ScoreCard score;

  @override
  String toString() {
    return 'ScoreState.loaded(score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreLoaded &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode => Object.hash(runtimeType, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreLoadedCopyWith<_$ScoreLoaded> get copyWith =>
      __$$ScoreLoadedCopyWithImpl<_$ScoreLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ScoreCard score) loaded,
    required TResult Function(String msg) error,
  }) {
    return loaded(score);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ScoreCard score)? loaded,
    TResult? Function(String msg)? error,
  }) {
    return loaded?.call(score);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ScoreCard score)? loaded,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(score);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScoreInitial value) initial,
    required TResult Function(ScoreLoading value) loading,
    required TResult Function(ScoreLoaded value) loaded,
    required TResult Function(ScoreError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScoreInitial value)? initial,
    TResult? Function(ScoreLoading value)? loading,
    TResult? Function(ScoreLoaded value)? loaded,
    TResult? Function(ScoreError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScoreInitial value)? initial,
    TResult Function(ScoreLoading value)? loading,
    TResult Function(ScoreLoaded value)? loaded,
    TResult Function(ScoreError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ScoreLoaded implements ScoreState {
  const factory ScoreLoaded({required final ScoreCard score}) = _$ScoreLoaded;

  ScoreCard get score;
  @JsonKey(ignore: true)
  _$$ScoreLoadedCopyWith<_$ScoreLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScoreErrorCopyWith<$Res> {
  factory _$$ScoreErrorCopyWith(
          _$ScoreError value, $Res Function(_$ScoreError) then) =
      __$$ScoreErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ScoreErrorCopyWithImpl<$Res>
    extends _$ScoreStateCopyWithImpl<$Res, _$ScoreError>
    implements _$$ScoreErrorCopyWith<$Res> {
  __$$ScoreErrorCopyWithImpl(
      _$ScoreError _value, $Res Function(_$ScoreError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ScoreError(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScoreError implements ScoreError {
  const _$ScoreError(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'ScoreState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreError &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreErrorCopyWith<_$ScoreError> get copyWith =>
      __$$ScoreErrorCopyWithImpl<_$ScoreError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ScoreCard score) loaded,
    required TResult Function(String msg) error,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ScoreCard score)? loaded,
    TResult? Function(String msg)? error,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ScoreCard score)? loaded,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScoreInitial value) initial,
    required TResult Function(ScoreLoading value) loading,
    required TResult Function(ScoreLoaded value) loaded,
    required TResult Function(ScoreError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScoreInitial value)? initial,
    TResult? Function(ScoreLoading value)? loading,
    TResult? Function(ScoreLoaded value)? loaded,
    TResult? Function(ScoreError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScoreInitial value)? initial,
    TResult Function(ScoreLoading value)? loading,
    TResult Function(ScoreLoaded value)? loaded,
    TResult Function(ScoreError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ScoreError implements ScoreState {
  const factory ScoreError(final String msg) = _$ScoreError;

  String get msg;
  @JsonKey(ignore: true)
  _$$ScoreErrorCopyWith<_$ScoreError> get copyWith =>
      throw _privateConstructorUsedError;
}
