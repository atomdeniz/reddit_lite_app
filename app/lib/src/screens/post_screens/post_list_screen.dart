import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/modules/reddit_lite_app/bloc/postlist_bloc_public.dart';

class PostListScreen extends StatefulWidget {
  @override
  _PostListScreenState createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  PostListBloc postListBloc;
  @override
  void initState() {
    postListBloc = new PostListBloc();
    postListBloc.add(GetPostListEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<List<Color>> colors = <List<Color>>[
      [
        Colors.redAccent,
        Colors.red[200],
      ],
      [
        Colors.pinkAccent,
        Colors.pink[200],
      ],
      [
        Colors.yellowAccent,
        Colors.yellow[200],
      ],
      [
        Colors.orangeAccent,
        Colors.orange[200],
      ],
      [
        Colors.purpleAccent,
        Colors.purple[200],
      ],
      [Colors.cyanAccent, Colors.cyan[200]]
    ];
    return BlocBuilder<PostListBloc, PostListState>(
        cubit: postListBloc,
        builder: (BuildContext context, PostListState state) {
          if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is PostListSuccessState) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state.postList.data.children.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        new BoxShadow(
                            color: Colors.black54,
                            blurRadius: 3.5,
                            offset: new Offset(1.0, 2.0)),
                      ],
                    ),
                    margin: EdgeInsets.only(
                        top: 10, left: 20, right: 20, bottom: 10),
                    height: 100,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(top: 20, left: 5),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            state.postList.data.children[index]
                                                .data.title,
                                          ),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
                // return Text(state.postList.data.children[index].data.title);
              },
            );
          }
          return SizedBox();
        });
  }
}
