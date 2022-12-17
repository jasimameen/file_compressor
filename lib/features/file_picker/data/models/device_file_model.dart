import 'package:file_compressor/features/file_picker/domain/entities/device_file.dart';
import 'package:file_picker/file_picker.dart';

class DeviceFileModel extends DeviceFile {
  const DeviceFileModel({
    required super.name,
    required super.path,
    required super.type,
    required super.size,
  });

  factory DeviceFileModel.fromPlatformFile(PlatformFile file) {
    return DeviceFileModel(
      name: file.name,
      path: file.path ?? '',
      type: file.extension ?? '',
      size: file.size,
    );
  }
}
