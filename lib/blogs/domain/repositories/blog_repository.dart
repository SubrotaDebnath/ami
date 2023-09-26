import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/blog_entity.dart';

abstract class BlogRepository {
  Future<Either<Failure, List<BlogEntity>>> getAllBlogs();
}
