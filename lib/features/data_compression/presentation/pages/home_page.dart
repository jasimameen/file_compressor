import 'dart:developer';

import 'package:file_compressor/core/constants/constants.dart';
import 'package:file_compressor/core/utils/toast_message.dart';

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
        title: const Text('File Compressor'),
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
    );
  }
}
