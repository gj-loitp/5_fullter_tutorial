import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:drag_select_grid_view/drag_select_grid_view.dart';
import 'package:flutter/material.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class SelectionAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SelectionAppBar({
    Key? key,
    this.title,
    this.selection = const Selection.empty(),
  }) : super(key: key);

  final Widget? title;
  final Selection selection;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    Widget _buildActionCodeWidget() {
      return IconButton(
        icon: Icon(
          Icons.code,
          color: Colors.white,
        ),
        onPressed: () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/drag_select_grid_view");
        },
      );
    }

    return AnimatedSwitcher(
      duration: kThemeAnimationDuration,
      child: selection.isSelecting
          ? AppBar(
              key: const Key('selecting'),
              titleSpacing: 0,
              leading: const CloseButton(),
              title: Text('${selection.amount} item(s) selected…'),
              actions: <Widget>[
                _buildActionCodeWidget(),
              ],
            )
          : AppBar(
              key: const Key('not-selecting'),
              title: title,
              actions: <Widget>[
                _buildActionCodeWidget(),
              ],
            ),
    );
  }
}
