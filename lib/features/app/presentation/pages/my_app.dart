import '../../../../core/utils/toast_message.dart';

import '../../../data_compression/presentation/bloc/compression_bloc.dart';
import '../../../file_handler/presentation/bloc/file_handler_bloc.dart';
import '../../../../injection.dart';
import '../../../../routes.dart';
import '../../../../themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<FileHandlerBloc>()),
        BlocProvider(create: (context) => sl<CompressionBloc>()),
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
