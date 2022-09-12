import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/DurationUtil.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
//https://karthikponnam.medium.com/flutter-loadmore-in-listview-23820612907d
class ListViewLoadMoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ListViewLoadMoreScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: ListTileWidget(),
    );
  }
}

class ListTileWidget extends StatefulWidget {
  ListTileWidget({
    Key? key,
    this.title,
  }) : super(key: key);
  final String? title;

  @override
  _ListTileWidgetState createState() => new _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  int present = 0;
  int perPage = 20;

  final originalItems = List<String>.generate(10000, (i) => "Item $i");
  var items = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    setState(() {
      items.addAll(originalItems.getRange(present, present + perPage));
      present = present + perPage;
    });
  }

  void loadMore() {
    print("loadMore present $present, perPage $perPage");
    if (_isLoading) {
      return;
    }
    _isLoading = true;
    DurationUtils.delay(2000, () {
      setState(() {
        if ((present + perPage) > originalItems.length) {
          items.addAll(originalItems.getRange(present, originalItems.length));
        } else {
          items.addAll(originalItems.getRange(present, present + perPage));
        }
        present = present + perPage;

        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new RefreshIndicator(
      color: Colors.pink,
      onRefresh: () async {
        refreshList();
      },
      child: Container(
        child: NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification scrollInfo) {
            if (scrollInfo.metrics.pixels ==
                scrollInfo.metrics.maxScrollExtent) {
              loadMore();
            }
            return false;
          },
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: (present <= originalItems.length)
                ? items.length + 1
                : items.length,
            itemBuilder: (context, index) {
              return (index == items.length)
                  ? Container(
                      padding:
                          EdgeInsets.all(DimenConstants.marginPaddingMedium),
                      child: Column(
                        children: [
                          CircularProgressIndicator(
                            backgroundColor: Colors.red,
                            strokeWidth: 3,
                          ),
                          UIUtils.getButton("Load More", () {
                            loadMore();
                          }),
                        ],
                      ),
                    )
                  : ListTile(
                      title: Text('${items[index]}'),
                    );
            },
          ),
        ),
      ),
    );
  }

  Future<dynamic> refreshList() async {
    await Future.delayed(const Duration(seconds: 2));
    return null; //do some here.
  }
}
