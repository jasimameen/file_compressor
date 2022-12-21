part of 'file_handler_bloc.dart';

@freezed
class FileHandlerState with _$FileHandlerState {
  factory FileHandlerState({
    required DeviceFile? deviceFile,
    required bool isFilePicked,
    required bool isLoading,
    required bool isError,
  }) = _Dummy;
  
  factory FileHandlerState.initial() => FileHandlerState(
        deviceFile: null,
        isFilePicked: false,
        isLoading: false,
        isError: false,
      );
}
