import 'package:flutter/cupertino.dart';
import 'package:flutter_provider_rest_api/src/model/post.dart';
import 'package:flutter_provider_rest_api/src/service/post_service.dart';

class PostViewModel extends ChangeNotifier {
  List<Post> _posts = [];

  List<Post> get posts => _posts;

  final PostService postService;

  PostViewModel({required this.postService}) {
    fetchData();
  }

  Future<void> fetchData() async {
    final result = await postService.getAllPosts();
    if (result.isNotEmpty) {
      _posts.clear();
      _posts.addAll(result);
      notifyListeners();
    }
  }
}
