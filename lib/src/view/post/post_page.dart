import 'package:flutter/material.dart';
import 'package:flutter_provider_rest_api/src/repository/post_repository.dart';
import 'package:flutter_provider_rest_api/src/service/post_service.dart';
import 'package:flutter_provider_rest_api/src/view/post/post_view.dart';
import 'package:flutter_provider_rest_api/src/view/post/post_view_model.dart';
import 'package:provider/provider.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PostViewModel(
          postService: PostService(postRepository: PostRepository())),
      child: const PostView(),
    );
  }
}
