import 'package:bloc/bloc.dart';
import 'package:shared/main.dart';
import 'package:shared/modules/reddit_lite_app/resources/reddit_resources.dart';

class PostListBloc extends Bloc<PostListEvent, PostListState> {
  PostListBloc() : super(InitialSuccessState());
  RedditApiRepository redditApiRepository = RedditApiRepository();

  @override
  Stream<PostListState> mapEventToState(PostListEvent event) async* {
    if (event is GetPostListEvent) {
      yield LoadingState();
      try {
        final response = await redditApiRepository.fetchRedditPosts();
        PostList postListModel = PostList.fromJson(response);
        yield PostListSuccessState(postList: postListModel);
      } catch (e) {
        FailureState(message: e);
      }
    }
  }
}
