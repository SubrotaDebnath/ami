import 'package:equatable/equatable.dart';

class BlogEntity extends Equatable {
  const BlogEntity({required this.title, required this.body});

  final String title;
  final String body;

  @override
  List<Object?> get props => [title, body];
}
