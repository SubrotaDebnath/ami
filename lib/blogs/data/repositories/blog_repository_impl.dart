import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/network/network_info.dart';
import '../../domain/entities/blog_entity.dart';
import '../../domain/repositories/blog_repository.dart';
import '../data_source/remote_data_source/blog_remote_data_source.dart';

class BlogRepositoryImpl extends BlogRepository {
  BlogRepositoryImpl({
    required this.blogRemoteDataSource,
    required this.networkInfo,
  });

  final BlogRemoteDataSource blogRemoteDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, List<BlogEntity>>> getAllBlogs() {
    // TODO(Subrota): implement getAllBlogs
    throw UnimplementedError();
  }
}
