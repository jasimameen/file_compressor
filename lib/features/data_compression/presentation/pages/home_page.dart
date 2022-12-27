import 'package:file_compressor/core/constants/constants.dart';

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
              text: 'Save a dummy file into local storage',
              color: Colors.green,
              onTap: () {
                context
                    .read<FileHandlerBloc>()
                    .add(const FileHandlerEvent.saveFile());
              },
            ),

            kHeight10,
            // Decompress Button
            CustomButton(
              text: 'Decompress',
              color: Colors.blue,
              onTap: () {
                context
                    .read<CompressionBloc>()
                    .add(const CompressionEvent.decompress());
              },
            ),
            kHeight10,
          ],
        ),
      ),
    );
  }
}
