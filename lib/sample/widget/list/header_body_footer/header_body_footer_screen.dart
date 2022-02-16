import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class HeaderBodyFooterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HeaderBodyFooterScreenState();
  }
}

class _HeaderBodyFooterScreenState
    extends BaseStatefulState<HeaderBodyFooterScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "HeaderBodyFooterScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.orangeAccent,
                  child: Center(
                    child: Text(
                      'Header',
                      style: TextStyle(color: Colors.white, letterSpacing: 4),
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Center(child: Text('$index')),
                    );
                  },
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    'Footer',
                    style: TextStyle(color: Colors.white, letterSpacing: 4),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
