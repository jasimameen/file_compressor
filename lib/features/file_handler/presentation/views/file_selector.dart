import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../file_handler/file_picker.dart';

class SelectFileWidget extends StatelessWidget {
  const SelectFileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenWidth * .8,
      width: screenWidth * .8,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.2),
        borderRadius: BorderRadius.circular(60),
      ),
      child: BlocBuilder<FileHandlerBloc, FileHandlerState>(
          builder: (context, state) {
        final file = state.deviceFile;

        // laoding state
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (file == null || state.isError || !state.isFilePicked) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                CupertinoIcons.folder,
                size: screenWidth * .2,
              ),
              const SelectFile()
            ],
          );
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              CupertinoIcons.folder,
              size: screenWidth * .2,
            ),
            Text('Type: ${file.type}'),
            Text('Size: ${file.size}'),
            Text(file.name),
            const SelectFile()
          ],
        );
      }),
    );
  }
}

class SelectFile extends StatelessWidget {
  const SelectFile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        context.read<FileHandlerBloc>().add(const FileHandlerEvent.pickFile());
      },
      child: const Text("Select File"),
    );
  }
}
