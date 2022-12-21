part of 'compression_bloc.dart';

@freezed
class CompressionState with _$CompressionState {
  const factory CompressionState.initial() = _Initial;
  const factory CompressionState.compressing() = _Compressing;
  const factory CompressionState.decompressing() = _Decompressing;
  const factory CompressionState.error() = _Error;
  const factory CompressionState.success(DeviceFile deviceFile) = _Success;
}
