// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class DeviceFile extends Equatable {
  final String name;
  final String path;
  final String type;
  final int size;

  const DeviceFile({
    required this.name,
    required this.path,
    required this.type,
    required this.size,
  });

  @override
  List<Object> get props => [name, path, type, size];

  @override
  bool get stringify => true;
}
