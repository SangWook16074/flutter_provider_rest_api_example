import 'package:flutter_provider_rest_api/src/model/post.dart';
import 'package:flutter_provider_rest_api/src/repository/post_repository.dart';

class PostService {
  final PostRepository postRepository;
  PostService({required this.postRepository});

  Future<List<Post>> getAllPosts() async {
    try {
      final result = await postRepository.getAllPosts();

      final List data = result.data;
      return data.map((json) => Post.fromJson(json)).toList();
    } on Exception catch (e) {
      print(e.toString());
      return [];
    }
  }
}
