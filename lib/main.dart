import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'features/app/presentation/pages/my_app.dart';
import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initInjection();
  runApp(const MyApp());
}

handlePermmision() async {
  await Permission.accessMediaLocation.request();
  await Permission.storage.request();
  await Permission.manageExternalStorage.request();
}
