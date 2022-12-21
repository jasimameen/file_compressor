// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_handler_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FileHandlerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickFile,
    required TResult Function() saveFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickFile,
    TResult? Function()? saveFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickFile,
    TResult Function()? saveFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_SaveFile value) saveFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickFile value)? pickFile,
    TResult? Function(_SaveFile value)? saveFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_SaveFile value)? saveFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileHandlerEventCopyWith<$Res> {
  factory $FileHandlerEventCopyWith(
          FileHandlerEvent value, $Res Function(FileHandlerEvent) then) =
      _$FileHandlerEventCopyWithImpl<$Res, FileHandlerEvent>;
}

/// @nodoc
class _$FileHandlerEventCopyWithImpl<$Res, $Val extends FileHandlerEvent>
    implements $FileHandlerEventCopyWith<$Res> {
  _$FileHandlerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PickFileCopyWith<$Res> {
  factory _$$_PickFileCopyWith(
          _$_PickFile value, $Res Function(_$_PickFile) then) =
      __$$_PickFileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PickFileCopyWithImpl<$Res>
    extends _$FileHandlerEventCopyWithImpl<$Res, _$_PickFile>
    implements _$$_PickFileCopyWith<$Res> {
  __$$_PickFileCopyWithImpl(
      _$_PickFile _value, $Res Function(_$_PickFile) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PickFile implements _PickFile {
  const _$_PickFile();

  @override
  String toString() {
    return 'FileHandlerEvent.pickFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PickFile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickFile,
    required TResult Function() saveFile,
  }) {
    return pickFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickFile,
    TResult? Function()? saveFile,
  }) {
    return pickFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickFile,
    TResult Function()? saveFile,
    required TResult orElse(),
  }) {
    if (pickFile != null) {
      return pickFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_SaveFile value) saveFile,
  }) {
    return pickFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickFile value)? pickFile,
    TResult? Function(_SaveFile value)? saveFile,
  }) {
    return pickFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_SaveFile value)? saveFile,
    required TResult orElse(),
  }) {
    if (pickFile != null) {
      return pickFile(this);
    }
    return orElse();
  }
}

abstract class _PickFile implements FileHandlerEvent {
  const factory _PickFile() = _$_PickFile;
}

/// @nodoc
abstract class _$$_SaveFileCopyWith<$Res> {
  factory _$$_SaveFileCopyWith(
          _$_SaveFile value, $Res Function(_$_SaveFile) then) =
      __$$_SaveFileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveFileCopyWithImpl<$Res>
    extends _$FileHandlerEventCopyWithImpl<$Res, _$_SaveFile>
    implements _$$_SaveFileCopyWith<$Res> {
  __$$_SaveFileCopyWithImpl(
      _$_SaveFile _value, $Res Function(_$_SaveFile) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SaveFile implements _SaveFile {
  const _$_SaveFile();

  @override
  String toString() {
    return 'FileHandlerEvent.saveFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveFile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickFile,
    required TResult Function() saveFile,
  }) {
    return saveFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickFile,
    TResult? Function()? saveFile,
  }) {
    return saveFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickFile,
    TResult Function()? saveFile,
    required TResult orElse(),
  }) {
    if (saveFile != null) {
      return saveFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_SaveFile value) saveFile,
  }) {
    return saveFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickFile value)? pickFile,
    TResult? Function(_SaveFile value)? saveFile,
  }) {
    return saveFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_SaveFile value)? saveFile,
    required TResult orElse(),
  }) {
    if (saveFile != null) {
      return saveFile(this);
    }
    return orElse();
  }
}

abstract class _SaveFile implements FileHandlerEvent {
  const factory _SaveFile() = _$_SaveFile;
}

/// @nodoc
mixin _$FileHandlerState {
  DeviceFile? get deviceFile => throw _privateConstructorUsedError;
  bool get isFilePicked => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileHandlerStateCopyWith<FileHandlerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileHandlerStateCopyWith<$Res> {
  factory $FileHandlerStateCopyWith(
          FileHandlerState value, $Res Function(FileHandlerState) then) =
      _$FileHandlerStateCopyWithImpl<$Res, FileHandlerState>;
  @useResult
  $Res call(
      {DeviceFile? deviceFile,
      bool isFilePicked,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$FileHandlerStateCopyWithImpl<$Res, $Val extends FileHandlerState>
    implements $FileHandlerStateCopyWith<$Res> {
  _$FileHandlerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceFile = freezed,
    Object? isFilePicked = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      deviceFile: freezed == deviceFile
          ? _value.deviceFile
          : deviceFile // ignore: cast_nullable_to_non_nullable
              as DeviceFile?,
      isFilePicked: null == isFilePicked
          ? _value.isFilePicked
          : isFilePicked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DummyCopyWith<$Res>
    implements $FileHandlerStateCopyWith<$Res> {
  factory _$$_DummyCopyWith(_$_Dummy value, $Res Function(_$_Dummy) then) =
      __$$_DummyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DeviceFile? deviceFile,
      bool isFilePicked,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_DummyCopyWithImpl<$Res>
    extends _$FileHandlerStateCopyWithImpl<$Res, _$_Dummy>
    implements _$$_DummyCopyWith<$Res> {
  __$$_DummyCopyWithImpl(_$_Dummy _value, $Res Function(_$_Dummy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceFile = freezed,
    Object? isFilePicked = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_Dummy(
      deviceFile: freezed == deviceFile
          ? _value.deviceFile
          : deviceFile // ignore: cast_nullable_to_non_nullable
              as DeviceFile?,
      isFilePicked: null == isFilePicked
          ? _value.isFilePicked
          : isFilePicked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Dummy implements _Dummy {
  _$_Dummy(
      {required this.deviceFile,
      required this.isFilePicked,
      required this.isLoading,
      required this.isError});

  @override
  final DeviceFile? deviceFile;
  @override
  final bool isFilePicked;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'FileHandlerState(deviceFile: $deviceFile, isFilePicked: $isFilePicked, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dummy &&
            (identical(other.deviceFile, deviceFile) ||
                other.deviceFile == deviceFile) &&
            (identical(other.isFilePicked, isFilePicked) ||
                other.isFilePicked == isFilePicked) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, deviceFile, isFilePicked, isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DummyCopyWith<_$_Dummy> get copyWith =>
      __$$_DummyCopyWithImpl<_$_Dummy>(this, _$identity);
}

abstract class _Dummy implements FileHandlerState {
  factory _Dummy(
      {required final DeviceFile? deviceFile,
      required final bool isFilePicked,
      required final bool isLoading,
      required final bool isError}) = _$_Dummy;

  @override
  DeviceFile? get deviceFile;
  @override
  bool get isFilePicked;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_DummyCopyWith<_$_Dummy> get copyWith =>
      throw _privateConstructorUsedError;
}
