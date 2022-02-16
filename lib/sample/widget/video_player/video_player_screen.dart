import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_word/sample/widget/video_player/player_video_and_pop_page.dart';
import 'package:hello_word/sample/widget/video_player/tab/bumble_bee_remote_video.dart';
import 'package:hello_word/sample/widget/video_player/tab/butter_fly_asset_video.dart';
import 'package:hello_word/sample/widget/video_player/tab/butter_fly_asset_video_in_list.dart';

class VideoPlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: const ValueKey<String>('home_page'),
        appBar: AppBar(
          title: const Text('VideoPlayerScreen'),
          actions: <Widget>[
            IconButton(
              key: const ValueKey<String>('push_tab'),
              icon: const Icon(Icons.navigation),
              onPressed: () {
                Navigator.push<PlayerVideoAndPopPage>(
                  context,
                  MaterialPageRoute<PlayerVideoAndPopPage>(
                    builder: (BuildContext context) => PlayerVideoAndPopPage(),
                  ),
                );
              },
            )
          ],
          bottom: const TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud),
                text: "Remote",
              ),
              Tab(icon: Icon(Icons.insert_drive_file), text: "Asset"),
              Tab(icon: Icon(Icons.list), text: "List example"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            BumbleBeeRemoteVideo(),
            ButterFlyAssetVideo(),
            ButterFlyAssetVideoInList(),
          ],
        ),
      ),
    );
  }
}
