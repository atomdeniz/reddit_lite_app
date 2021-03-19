import 'package:equatable/equatable.dart';
import 'package:shared/modules/reddit_lite_app/models/postlist_model.dart';

abstract class PostListState extends Equatable {
  @override
  List<Object> get props => throw UnimplementedError();
}

class InitialSuccessState extends PostListState {}

class PostListSuccessState extends PostListState {
  final PostList postList;
  PostListSuccessState({this.postList});
}

class LoadingState extends PostListState {}

class FailureState extends PostListState {
  final dynamic message;
  final String cod;
  FailureState({this.message, this.cod});
}
