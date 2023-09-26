part of 'blog_bloc.dart';

abstract class BlogState extends Equatable {
  const BlogState();
}

class BlogInitial extends BlogState {
  @override
  List<Object> get props => [];
}
