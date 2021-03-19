// home screen contents
import 'package:app/src/utils/app_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shared/main.dart';
import 'package:app/src/config/string_constants.dart' as string_constants;
import 'package:app/src/screens/post_screens/post_list_screen.dart';
import 'package:shared/modules/reddit_lite_app/bloc/postlist_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              string_constants.app_bar_title,
              style: Theme.of(context).appBarTheme.textTheme.bodyText1,
            ),
          ),
          body: BlocProvider(
            create: (context) => PostListBloc(),
            child: PostListScreen(),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Switch(
                            value: Provider.of<AppStateNotifier>(context)
                                .isDarkMode,
                            onChanged: (value) {
                              Provider.of<AppStateNotifier>(context,
                                      listen: false)
                                  .updateTheme(value);
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
