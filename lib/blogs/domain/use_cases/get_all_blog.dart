import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/use_case/use_case.dart';
import '../entities/blog_entity.dart';
import '../repositories/blog_repository.dart';

class GetAllBlog extends UseCase<List<BlogEntity>, EmptyParam> {
  GetAllBlog({required this.blogRepository});

  final BlogRepository blogRepository;

  @override
  Future<Either<Failure, List<BlogEntity>>> call(EmptyParam params) {
    return blogRepository.getAllBlogs();
  }
}
