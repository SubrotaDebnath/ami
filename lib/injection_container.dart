import 'package:get_it/get_it.dart';

import 'blogs/data/data_source/remote_data_source/blog_remote_data_source.dart';
import 'blogs/data/repositories/blog_repository_impl.dart';
import 'blogs/domain/repositories/blog_repository.dart';
import 'blogs/domain/use_cases/get_all_blog.dart';
import 'blogs/presentation/business_logic/blog_bloc/blog_bloc.dart';
import 'core/network/network_info.dart';
import 'dev/log.dart';

GetIt sl = GetIt.instance;

Future<void> init() async {
  /// HOME
  // BLOG
  //Presentation
  //BLoC
  sl
    ..registerFactory<BlogBloc>(() => BlogBloc(getAllBlog: sl()))

    // Use Cases
    ..registerLazySingleton(
      () => GetAllBlog(
        blogRepository: sl(),
      ),
    );

  //Repository
  GetIt.instance.registerLazySingleton<BlogRepository>(
    () => BlogRepositoryImpl(
      blogRemoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  //Data Source
  sl
    ..registerLazySingleton<BlogRemoteDataSource>(
      () => BlogRemoteDataSourceImpl(
        client: sl(),
      ),
    )

    ///! Core
    ..registerLazySingleton<NetworkInfo>(
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
