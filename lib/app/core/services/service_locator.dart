
import 'package:flutter_craft/app/data/local/preference/preference_manager.dart';
import 'package:flutter_craft/app/data/local/preference/preference_manager_impl.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

class ServiceLocator {
  static Future<void> setUpServiceLocator() async {
    serviceLocator.registerLazySingleton<PreferenceManager>(
        () => PreferenceManagerImpl());

    // serviceLocator.registerLazySingleton<ConfigLocalSource>(
    //     () => ConfigLocalSourceImpl());

    // serviceLocator
    //     .registerLazySingleton<ConfigRepository>(() => ConfigRepositoryImpl());

    // serviceLocator
    //     .registerLazySingleton<HomeRemoteSource>(() => HomeRemoteSourceImpl());

    // serviceLocator
    //     .registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl());
  }
}
