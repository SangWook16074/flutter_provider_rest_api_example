import 'package:flutter/material.dart';
import 'package:flutter_provider_rest_api/src/model/post.dart';
import 'package:flutter_provider_rest_api/src/view/post/post_view_model.dart';
import 'package:provider/provider.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    // final viewModel = Provider.of<PostViewModel>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("게시판"),
        ),
        body: Consumer<PostViewModel>(builder: (context, provider, child) {
          return ListView.builder(
              itemCount: provider.posts.length,
              itemBuilder: (context, index) {
                final Post post = provider.posts[index];
                return ListTile(
                  title: Text(
                    post.title,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    post.post,
                    style: TextStyle(color: Colors.black),
                  ),
                );
              });
        }));
  }
}
