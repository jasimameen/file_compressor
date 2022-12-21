import 'package:file_compressor/core/utils/toast_message.dart';
import 'package:file_compressor/features/file_handler/data/datasources/file_handler_local_datasource.dart.dart';
import 'package:file_compressor/features/file_handler/data/repositories/file_handler_repository_impl.dart';
import 'package:file_compressor/features/file_handler/presentation/bloc/file_handler_bloc.dart';
import 'package:file_compressor/injection.dart';
import 'package:file_compressor/routes.dart';
import 'package:file_compressor/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<FileHandlerBloc>(),
        )
      ],
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
