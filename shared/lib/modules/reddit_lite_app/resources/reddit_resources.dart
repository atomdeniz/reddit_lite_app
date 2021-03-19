import 'package:api_sdk/main.dart';

class RedditApiRepository {
  Future fetchRedditPosts() async {
    final response = await ApiSdk.getRedditPosts();
    return response;
  }
}
