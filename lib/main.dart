
import 'package:flutter/material.dart';


import 'features/app/presentation/pages/my_app.dart';
import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initInjection();
  runApp(const MyApp());
}
