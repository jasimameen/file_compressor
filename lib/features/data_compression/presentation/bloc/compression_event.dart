part of 'compression_bloc.dart';

@freezed
class CompressionEvent with _$CompressionEvent {
  const factory CompressionEvent.compress(DeviceFile inFile) = _Compress;
  const factory CompressionEvent.decompress(DeviceFile inFile) = _Decompress;
}
