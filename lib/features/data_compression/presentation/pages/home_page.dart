import 'dart:developer';
import 'dart:io';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/toast_message.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

import '../bloc/compression_bloc.dart';
import '../widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../file_handler/file_picker.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LesKr'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            kHeight10,
            const SelectFileWidget(),

            spacer,

            // Compress Button
            CustomButton(
              text: 'Compress File',
              color: Colors.green,
              onTap: () {
                final selectedFile =
                    context.read<FileHandlerBloc>().state.deviceFile;
                if (selectedFile == null) {
                  Toast.instance.show('No file Selected select a file first');
                  return;
                }
                context
                    .read<CompressionBloc>()
                    .add(CompressionEvent.compress(selectedFile));
              },
            ),

            kHeight10,
            // Decompress Button
            CustomButton(
              text: 'Decompress',
              color: Colors.blue,
              onTap: () {
                final selectedFile =
                    context.read<FileHandlerBloc>().state.deviceFile;
                if (selectedFile == null) {
                  Toast.instance.show('No file Selected select a file first');
                  return;
                }
                context
                    .read<CompressionBloc>()
                    .add(CompressionEvent.decompress(selectedFile));
              },
            ),
            kHeight10,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        const dir = '/storage/emulated/0/LesKr';
        final folder = await Directory(dir).create(recursive: true);
    
        File hell =
            await File('${folder.path}hell.txt').create(recursive: true);
        hell.writeAsStringSync('Hai how are you hehe');

        log('done downlo');
      }),
    );
  }
}
