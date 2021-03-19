import 'package:equatable/equatable.dart';

abstract class PostListEvent extends Equatable {
  @override
  List<Object> get props => throw UnimplementedError();
}

class GetPostListEvent extends PostListEvent {}
