import 'package:file_compressor/core/utils/toast_message.dart';
import 'package:file_compressor/features/file_picker/data/repositories/file_handler_repository_impl.dart';
import 'package:file_compressor/features/file_picker/domain/usecases/pick_file_from_Device.dart';
import 'package:file_compressor/routes.dart';
import 'package:file_compressor/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/data_compression/presentation/bloc/datacompress_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DatacompressBloc(PickFileFromDevice(FileHandlerRepositoryImpl())),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: ToastMessenger.instance,
        title: 'File Compressor',

        themeMode: ThemeMode.dark,
        darkTheme: darkTheme,

        // routes
        initialRoute: initialRoute,
        routes: routes,
      ),
    );
  }
}
