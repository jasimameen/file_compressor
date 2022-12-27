import 'dart:io';

import 'package:file_compressor/features/file_handler/data/repositories/file_handler_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'features/app/presentation/pages/my_app.dart';
import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initInjection();
  runApp(const MyApp());
}
