part of 'file_handler_bloc.dart';

@freezed
class FileHandlerEvent with _$FileHandlerEvent {
  const factory FileHandlerEvent.pickFile() = _PickFile;
  const factory FileHandlerEvent.saveFile(List<int> bytes) = _SaveFile;
}