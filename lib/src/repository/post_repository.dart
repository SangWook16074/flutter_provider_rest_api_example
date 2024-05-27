import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/base_response.dart';

class PostRepository {
  Future<BaseResponse> getAllPosts() async {
    final response =
        await http.get(Uri.parse("http://localhost:8080/api/posts"));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data =
          jsonDecode(utf8.decode(response.bodyBytes));
      return BaseResponse.fromJson(data);
    } else {
      throw Exception();
    }
  }
}
