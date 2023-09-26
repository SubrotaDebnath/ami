import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/use_cases/get_all_blog.dart';

part 'blog_event.dart';
part 'blog_state.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState> {

  BlogBloc({required this.getAllBlog,}) : super(BlogInitial()) {
    on<BlogEvent>((event, emit) {
      // TODO(Subrota): implement event handler
    });
  }

  final GetAllBlog getAllBlog;
}
