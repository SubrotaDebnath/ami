import '../../domain/entities/blog_entity.dart';

class BlogModel extends BlogEntity {
  const BlogModel({required super.title, required super.body});

  factory BlogModel.fromJson(Map<String, dynamic> json) {
    return BlogModel(
      title: json['title'],
      body: json['body'],
    );
  }
}
