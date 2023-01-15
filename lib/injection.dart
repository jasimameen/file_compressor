import 'features/file_handler/domain/usecases/save_to_local_storage.dart';

import 'features/file_handler/data/datasources/file_handler_local_datasource.dart.dart';
import 'features/file_handler/domain/repositories/files_handler_repository.dart';
import 'features/file_handler/presentation/bloc/file_handler_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get_it/get_it.dart';

import 'features/data_compression/presentation/bloc/compression_bloc.dart';
import 'features/file_handler/data/repositories/file_handler_repository_impl.dart';
import 'features/file_handler/domain/usecases/pick_file_from_local_storage.dart';

GetIt sl = GetIt.instance;

void initInjection() {
  _initFileHandlerInjection();
  _initCompressionInjection();
}

//* ----- File Handler ----- *//
void _initFileHandlerInjection() {
  // bloc
  sl.registerLazySingleton(() => FileHandlerBloc(sl(), sl()));

  // usecase
  sl.registerLazySingleton(() => PickFileFromLocalStorage(sl()));
  sl.registerLazySingleton(() => SaveToLocalStorage(sl()));

  // repository
  sl.registerLazySingleton<FileHandlerRepository>(
      () => FileHandlerRepositoryImpl(sl()));

  // data source
  sl.registerLazySingleton<FileHandlerLocalDataSource>(
      () => FileHandlerLocalDataSourceImpl(sl()));

  //! external
  sl.registerLazySingleton(() => FilePicker.platform);
}

//* ----- Compresiion ----- *//
void _initCompressionInjection() {
  // bloc
  sl.registerLazySingleton(() => CompressionBloc(sl()));

  // usecase

  // repository

  // data source

  //! external
}
