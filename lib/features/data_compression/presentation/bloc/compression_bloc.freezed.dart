// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compression_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompressionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() compress,
    required TResult Function() decompress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? compress,
    TResult? Function()? decompress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? compress,
    TResult Function()? decompress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Compress value) compress,
    required TResult Function(_Decompress value) decompress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Compress value)? compress,
    TResult? Function(_Decompress value)? decompress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Compress value)? compress,
    TResult Function(_Decompress value)? decompress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompressionEventCopyWith<$Res> {
  factory $CompressionEventCopyWith(
          CompressionEvent value, $Res Function(CompressionEvent) then) =
      _$CompressionEventCopyWithImpl<$Res, CompressionEvent>;
}

/// @nodoc
class _$CompressionEventCopyWithImpl<$Res, $Val extends CompressionEvent>
    implements $CompressionEventCopyWith<$Res> {
  _$CompressionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CompressCopyWith<$Res> {
  factory _$$_CompressCopyWith(
          _$_Compress value, $Res Function(_$_Compress) then) =
      __$$_CompressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CompressCopyWithImpl<$Res>
    extends _$CompressionEventCopyWithImpl<$Res, _$_Compress>
    implements _$$_CompressCopyWith<$Res> {
  __$$_CompressCopyWithImpl(
      _$_Compress _value, $Res Function(_$_Compress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Compress implements _Compress {
  const _$_Compress();

  @override
  String toString() {
    return 'CompressionEvent.compress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Compress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() compress,
    required TResult Function() decompress,
  }) {
    return compress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? compress,
    TResult? Function()? decompress,
  }) {
    return compress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? compress,
    TResult Function()? decompress,
    required TResult orElse(),
  }) {
    if (compress != null) {
      return compress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Compress value) compress,
    required TResult Function(_Decompress value) decompress,
  }) {
    return compress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Compress value)? compress,
    TResult? Function(_Decompress value)? decompress,
  }) {
    return compress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Compress value)? compress,
    TResult Function(_Decompress value)? decompress,
    required TResult orElse(),
  }) {
    if (compress != null) {
      return compress(this);
    }
    return orElse();
  }
}

abstract class _Compress implements CompressionEvent {
  const factory _Compress() = _$_Compress;
}

/// @nodoc
abstract class _$$_DecompressCopyWith<$Res> {
  factory _$$_DecompressCopyWith(
          _$_Decompress value, $Res Function(_$_Decompress) then) =
      __$$_DecompressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DecompressCopyWithImpl<$Res>
    extends _$CompressionEventCopyWithImpl<$Res, _$_Decompress>
    implements _$$_DecompressCopyWith<$Res> {
  __$$_DecompressCopyWithImpl(
      _$_Decompress _value, $Res Function(_$_Decompress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Decompress implements _Decompress {
  const _$_Decompress();

  @override
  String toString() {
    return 'CompressionEvent.decompress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Decompress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() compress,
    required TResult Function() decompress,
  }) {
    return decompress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? compress,
    TResult? Function()? decompress,
  }) {
    return decompress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? compress,
    TResult Function()? decompress,
    required TResult orElse(),
  }) {
    if (decompress != null) {
      return decompress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Compress value) compress,
    required TResult Function(_Decompress value) decompress,
  }) {
    return decompress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Compress value)? compress,
    TResult? Function(_Decompress value)? decompress,
  }) {
    return decompress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Compress value)? compress,
    TResult Function(_Decompress value)? decompress,
    required TResult orElse(),
  }) {
    if (decompress != null) {
      return decompress(this);
    }
    return orElse();
  }
}

abstract class _Decompress implements CompressionEvent {
  const factory _Decompress() = _$_Decompress;
}

/// @nodoc
mixin _$CompressionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() compressing,
    required TResult Function() decompressing,
    required TResult Function() error,
    required TResult Function(DeviceFile deviceFile) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? compressing,
    TResult? Function()? decompressing,
    TResult? Function()? error,
    TResult? Function(DeviceFile deviceFile)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? compressing,
    TResult Function()? decompressing,
    TResult Function()? error,
    TResult Function(DeviceFile deviceFile)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Compressing value) compressing,
    required TResult Function(_Decompressing value) decompressing,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Compressing value)? compressing,
    TResult? Function(_Decompressing value)? decompressing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Compressing value)? compressing,
    TResult Function(_Decompressing value)? decompressing,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompressionStateCopyWith<$Res> {
  factory $CompressionStateCopyWith(
          CompressionState value, $Res Function(CompressionState) then) =
      _$CompressionStateCopyWithImpl<$Res, CompressionState>;
}

/// @nodoc
class _$CompressionStateCopyWithImpl<$Res, $Val extends CompressionState>
    implements $CompressionStateCopyWith<$Res> {
  _$CompressionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CompressionStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CompressionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() compressing,
    required TResult Function() decompressing,
    required TResult Function() error,
    required TResult Function(DeviceFile deviceFile) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? compressing,
    TResult? Function()? decompressing,
    TResult? Function()? error,
    TResult? Function(DeviceFile deviceFile)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? compressing,
    TResult Function()? decompressing,
    TResult Function()? error,
    TResult Function(DeviceFile deviceFile)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Compressing value) compressing,
    required TResult Function(_Decompressing value) decompressing,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Compressing value)? compressing,
    TResult? Function(_Decompressing value)? decompressing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Compressing value)? compressing,
    TResult Function(_Decompressing value)? decompressing,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CompressionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_CompressingCopyWith<$Res> {
  factory _$$_CompressingCopyWith(
          _$_Compressing value, $Res Function(_$_Compressing) then) =
      __$$_CompressingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CompressingCopyWithImpl<$Res>
    extends _$CompressionStateCopyWithImpl<$Res, _$_Compressing>
    implements _$$_CompressingCopyWith<$Res> {
  __$$_CompressingCopyWithImpl(
      _$_Compressing _value, $Res Function(_$_Compressing) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Compressing implements _Compressing {
  const _$_Compressing();

  @override
  String toString() {
    return 'CompressionState.compressing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Compressing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() compressing,
    required TResult Function() decompressing,
    required TResult Function() error,
    required TResult Function(DeviceFile deviceFile) success,
  }) {
    return compressing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? compressing,
    TResult? Function()? decompressing,
    TResult? Function()? error,
    TResult? Function(DeviceFile deviceFile)? success,
  }) {
    return compressing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? compressing,
    TResult Function()? decompressing,
    TResult Function()? error,
    TResult Function(DeviceFile deviceFile)? success,
    required TResult orElse(),
  }) {
    if (compressing != null) {
      return compressing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Compressing value) compressing,
    required TResult Function(_Decompressing value) decompressing,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return compressing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Compressing value)? compressing,
    TResult? Function(_Decompressing value)? decompressing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return compressing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Compressing value)? compressing,
    TResult Function(_Decompressing value)? decompressing,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (compressing != null) {
      return compressing(this);
    }
    return orElse();
  }
}

abstract class _Compressing implements CompressionState {
  const factory _Compressing() = _$_Compressing;
}

/// @nodoc
abstract class _$$_DecompressingCopyWith<$Res> {
  factory _$$_DecompressingCopyWith(
          _$_Decompressing value, $Res Function(_$_Decompressing) then) =
      __$$_DecompressingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DecompressingCopyWithImpl<$Res>
    extends _$CompressionStateCopyWithImpl<$Res, _$_Decompressing>
    implements _$$_DecompressingCopyWith<$Res> {
  __$$_DecompressingCopyWithImpl(
      _$_Decompressing _value, $Res Function(_$_Decompressing) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Decompressing implements _Decompressing {
  const _$_Decompressing();

  @override
  String toString() {
    return 'CompressionState.decompressing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Decompressing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() compressing,
    required TResult Function() decompressing,
    required TResult Function() error,
    required TResult Function(DeviceFile deviceFile) success,
  }) {
    return decompressing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? compressing,
    TResult? Function()? decompressing,
    TResult? Function()? error,
    TResult? Function(DeviceFile deviceFile)? success,
  }) {
    return decompressing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? compressing,
    TResult Function()? decompressing,
    TResult Function()? error,
    TResult Function(DeviceFile deviceFile)? success,
    required TResult orElse(),
  }) {
    if (decompressing != null) {
      return decompressing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Compressing value) compressing,
    required TResult Function(_Decompressing value) decompressing,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return decompressing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Compressing value)? compressing,
    TResult? Function(_Decompressing value)? decompressing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return decompressing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Compressing value)? compressing,
    TResult Function(_Decompressing value)? decompressing,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (decompressing != null) {
      return decompressing(this);
    }
    return orElse();
  }
}

abstract class _Decompressing implements CompressionState {
  const factory _Decompressing() = _$_Decompressing;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$CompressionStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'CompressionState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() compressing,
    required TResult Function() decompressing,
    required TResult Function() error,
    required TResult Function(DeviceFile deviceFile) success,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? compressing,
    TResult? Function()? decompressing,
    TResult? Function()? error,
    TResult? Function(DeviceFile deviceFile)? success,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? compressing,
    TResult Function()? decompressing,
    TResult Function()? error,
    TResult Function(DeviceFile deviceFile)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Compressing value) compressing,
    required TResult Function(_Decompressing value) decompressing,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Compressing value)? compressing,
    TResult? Function(_Decompressing value)? decompressing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Compressing value)? compressing,
    TResult Function(_Decompressing value)? decompressing,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CompressionState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({DeviceFile deviceFile});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$CompressionStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceFile = null,
  }) {
    return _then(_$_Success(
      null == deviceFile
          ? _value.deviceFile
          : deviceFile // ignore: cast_nullable_to_non_nullable
              as DeviceFile,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.deviceFile);

  @override
  final DeviceFile deviceFile;

  @override
  String toString() {
    return 'CompressionState.success(deviceFile: $deviceFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.deviceFile, deviceFile) ||
                other.deviceFile == deviceFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deviceFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() compressing,
    required TResult Function() decompressing,
    required TResult Function() error,
    required TResult Function(DeviceFile deviceFile) success,
  }) {
    return success(deviceFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? compressing,
    TResult? Function()? decompressing,
    TResult? Function()? error,
    TResult? Function(DeviceFile deviceFile)? success,
  }) {
    return success?.call(deviceFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? compressing,
    TResult Function()? decompressing,
    TResult Function()? error,
    TResult Function(DeviceFile deviceFile)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(deviceFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Compressing value) compressing,
    required TResult Function(_Decompressing value) decompressing,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Compressing value)? compressing,
    TResult? Function(_Decompressing value)? decompressing,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Compressing value)? compressing,
    TResult Function(_Decompressing value)? decompressing,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CompressionState {
  const factory _Success(final DeviceFile deviceFile) = _$_Success;

  DeviceFile get deviceFile;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}
