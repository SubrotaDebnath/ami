import 'package:get_it/get_it.dart';

import 'core/network/network_info.dart';
import 'dev/log.dart';

GetIt sl = GetIt.instance;

Future<void> init() async {
  /// HOME
  //Presentation
  //BLoC
  // sl.registerFactory<HomeBloc>(() => HomeBloc());

  // Use Cases
  // sl.registerLazySingleton(() => GetUpcomingOffersMessageUseCase(messageRepository: sl(),));

  //Repository
  // GetIt.instance.registerLazySingleton<UpcomingOffersMessageRepository>(() => UpcomingOffersMessageRepositoryImpl(remoteDataSource: sl(), networkInfo: sl(),),);

  //Data Source
  // sl.registerLazySingleton<UpcomingOffersMessageRemoteDataSource>(() => UpcomingOffersMessageRemoteDataSourceImpl(client: sl(),),);

  ///! Core
  sl..registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
      connectionChecker: sl(),
    ),
  )
  ..registerLazySingleton<Log>(LogImpl.new);
  // sl.registerLazySingleton(() => Preferences());

  ///! External
  // final sharedPreferences = await SharedPreferences.getInstance();
  // sl.registerLazySingleton(() => sharedPreferences);
  // sl.registerLazySingleton(() => InternetConnectionCheckerPlus());
  // sl.registerLazySingleton(() => Client());
  // sl.registerLazySingleton(() => JwtDecoder());
}
