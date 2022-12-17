import 'package:file_compressor/features/data_compression/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

String? initialRoute = HomePage.routeName;

Map<String, Widget Function(BuildContext)> routes = {
  HomePage.routeName: (context) => const HomePage(),
};
