part of 'compression_bloc.dart';

@freezed
class CompressionEvent with _$CompressionEvent {
  const factory CompressionEvent.compress() = _Compress;
  const factory CompressionEvent.decompress() = _Decompress;
}
