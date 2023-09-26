import 'package:http/http.dart';

import '../../models/blog_model.dart';

abstract class BlogRemoteDataSource {
  Future<List<BlogModel>> getBlogs();
}

class BlogRemoteDataSourceImpl extends BlogRemoteDataSource {
  BlogRemoteDataSourceImpl({required this.client});

  final Client client;

  @override
  Future<List<BlogModel>> getBlogs() {
    // TODO(Subrota): implement getBlogs
    throw UnimplementedError();
  }
}
