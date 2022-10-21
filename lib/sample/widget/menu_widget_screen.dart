import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/blur/BlurScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/bottomBar/MenuBottomBarScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/overflow_view/overflow_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/picker/menu_picker_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/scrollable_table_view/scrollable_table_view_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/simple_url_preview/simple_url_preview_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/tab_page_selector/tab_page_selector_sreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/text_view/menu_text_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/video_player/video_player_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/wave/wave_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/webview/menu_webview_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'animated_background/animated_background_screen.dart';
import 'appbar/SliverAppBarScreen.dart';
import 'badges/badges_screen.dart';
import 'bottomSheet/BottomSheetScreen.dart';
import 'bottom_bar_with_sheet/bottom_bar_with_sheet_screen.dart';
import 'button/MenuButtonScreen.dart';
import 'calendar_appbar/calendar_appbar_screen.dart';
import 'calendar_view/calendar_view_screen.dart';
import 'card/card_screen.dart';
import 'chart/fl_chart/ChartScreen.dart';
import 'checkBox/CheckBoxScreen.dart';
import 'checkBox/RadioButtonScreen.dart';
import 'checkBox/RadioButtonScreen2.dart';
import 'clay_containers/clay_containers_screen.dart';
import 'cupertino/MenuCupertinoScreen.dart';
import 'dataTable/DataTableScreen.dart';
import 'dchart/DChartScreen.dart';
import 'delayedDisplay/DelayedDisplayScreen.dart';
import 'dialog/menu_dialog_screen.dart';
import 'dotted_border/dotted_border_screen.dart';
import 'drawer/MenuDrawerScreen.dart';
import 'easy_loading/easy_loading_screen.dart';
import 'editText/MenuEditTextScreen.dart';
import 'expanded/ExpandedScreen.dart';
import 'expansion/MenuExpansionScreen.dart';
import 'floating_bubbles/floating_bubbles_screen.dart';
import 'flutterReactionButton/FlutterReactionButtonScreen.dart';
import 'flutter_simple_treeview/flutter_simple_treeview_screen.dart';
import 'gesture/GestureScreen.dart';
import 'grid/MenuGridScreen.dart';
import 'horizontal_calendar/horizontal_calendar_screen.dart';
import 'horizontal_card_pager/horizontal_card_pager.dart';
import 'in_app_review/in_app_review_screen.dart';
import 'inkwell/inkwell_screen.dart';
import 'interactive_viewer/using_interactive_viewer_screen.dart';
import 'layout/menu_layout_screen.dart';
import 'list/MenuListScreen.dart';
import 'md2TabIndicator/Md2TabIndicatorScreen.dart';
import 'menuHorizontalDataTable/MenuHorizontalDataTableScreen.dart';
import 'menu_image/menu_image_screen.dart';
import 'modalBottomSheet/model_bottom_sheet_screen.dart';
import 'progress/menu_progress_screen.dart';
import 'shape_of_view/shape_of_view_screen.dart';
import 'shimmer/shimmer_screen.dart';
import 'slider/menu_slider_screen.dart';
import 'stack/stack_screen.dart';
import 'state/stateful_widget_demo_screen.dart';
import 'state/stateless_widget_demo_screen.dart';
import 'stepper/stepper_screen.dart';
import 'switch/switch_screen.dart';
import 'table/table_screen.dart';
import 'time_planner/time_planner_screen.dart';
import 'tooltip/tooltip_screen.dart';
import 'youtube_player_flutter/youtube_player_flutter_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuWidgetScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: CupertinoScrollbar(
        thumbVisibility: true,
        child: ListView(
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          physics: BouncingScrollPhysics(),
          children: [
            UIUtils.getButton(
              "animated_background",
              () {
                Get.to(() => AnimatedBackgroundScreen());
              },
            ),
            UIUtils.getButton(
              "SliverAppBarScreen",
              () {
                Get.to(() => SliverAppBarScreen());
              },
            ),
            UIUtils.getButton(
              "badges",
              () {
                Get.to(() => BadgesScreen());
              },
            ),
            UIUtils.getButton(
              "blur",
              () {
                Get.to(() => BlurScreen());
              },
            ),
            UIUtils.getButton(
              "bottom_bar_with_sheet",
              () {
                Get.to(() => BottomBarWithSheetScreen());
              },
            ),
            UIUtils.getButton(
              "MenuBottomBarScreen",
              () {
                Get.to(() => MenuBottomBarScreen());
              },
            ),
            UIUtils.getButton(
              "BottomSheetScreen",
              () {
                Get.to(() => BottomSheetScreen());
              },
            ),
            UIUtils.getButton(
              "MenuButtonScreen",
              () {
                Get.to(() => MenuButtonScreen());
              },
            ),
            UIUtils.getButton(
              "calendar_appbar",
              () {
                Get.to(() => CalendarAppbarScreen());
              },
            ),
            UIUtils.getButton(
              "calendar_view",
              () {
                Get.to(() => CalendarViewScreen());
              },
            ),
            UIUtils.getButton(
              "CardScreen",
              () {
                Get.to(() => CardScreen());
              },
            ),
            UIUtils.getButton(
              "ChartScreen",
              () {
                Get.to(() => ChartScreen());
              },
            ),
            UIUtils.getButton(
              "CheckBoxScreen",
              () {
                Get.to(() => CheckBoxScreen());
              },
            ),
            UIUtils.getButton(
              "clay_containers",
              () {
                Get.to(() => ClayContainersScreen());
              },
            ),
            UIUtils.getButton(
              "RadioButtonScreen",
              () {
                Get.to(() => RadioButtonScreen());
              },
            ),
            UIUtils.getButton(
              "RadioButtonScreen2",
              () {
                Get.to(() => RadioButtonScreen2());
              },
            ),
            UIUtils.getButton(
              "MenuCupertinoScreen",
              () {
                Get.to(() => MenuCupertinoScreen());
              },
            ),
            UIUtils.getButton(
              "DataTableScreen",
              () {
                Get.to(() => DataTableScreen());
              },
            ),
            UIUtils.getButton(
              "d_chart",
              () {
                Get.to(() => DChartScreen());
              },
            ),
            UIUtils.getButton(
              "DelayedDisplayScreen",
              () {
                Get.to(() => DelayedDisplayScreen());
              },
            ),
            UIUtils.getButton(
              "MenuDialogScreen",
              () {
                Get.to(() => MenuDialogScreen());
              },
            ),
            UIUtils.getButton(
              "DottedBorderScreen",
              () {
                Get.to(() => DottedBorderScreen());
              },
            ),
            UIUtils.getButton(
              "MenuDrawerScreen",
              () {
                Get.to(() => MenuDrawerScreen());
              },
            ),
            UIUtils.getButton(
              "EasyLoadingScreen",
              () {
                Get.to(() => EasyLoadingScreen());
              },
            ),
            UIUtils.getButton(
              "MenuEditTextScreen",
              () {
                Get.to(() => MenuEditTextScreen());
              },
            ),
            UIUtils.getButton(
              "ExpandedScreen",
              () {
                Get.to(() => ExpandedScreen());
              },
            ),
            UIUtils.getButton(
              "MenuExpansionScreen",
              () {
                Get.to(() => MenuExpansionScreen());
              },
            ),
            UIUtils.getButton(
              "floating_bubbles",
              () {
                Get.to(() => FloatingBubblesScreen());
              },
            ),
            UIUtils.getButton(
              "flutter_simple_treeview",
              () {
                Get.to(() => FlutterSimpleTreeViewScreen());
              },
            ),
            UIUtils.getButton(
              "FlutterReactionButtonScreen",
              () {
                Get.to(() => FlutterReactionButtonScreen());
              },
            ),
            UIUtils.getButton(
              "GestureScreen",
              () {
                Get.to(() => GestureScreen());
              },
            ),
            UIUtils.getButton(
              "MenuGridScreen",
              () {
                Get.to(() => MenuGridScreen());
              },
            ),
            UIUtils.getButton(
              "horizontal_calendar",
              () {
                Get.to(() => HorizontalCalendarScreen());
              },
            ),
            UIUtils.getButton(
              "HorizontalCardPagerScreen",
              () {
                Get.to(() => HorizontalCardPagerScreen());
              },
            ),
            UIUtils.getButton(
              "InAppReviewScreen",
              () {
                Get.to(() => InAppReviewScreen());
              },
            ),
            UIUtils.getButton(
              "InkwellScreen",
              () {
                Get.to(() => InkwellScreen());
              },
            ),
            UIUtils.getButton(
              "UsingInteractiveViewerScreen",
              () {
                Get.to(() => UsingInteractiveViewerScreen());
              },
            ),
            UIUtils.getButton(
              "MenuLayoutScreen",
              () {
                Get.to(() => MenuLayoutScreen());
              },
            ),
            UIUtils.getButton(
              "MenuListScreen",
              () {
                Get.to(() => MenuListScreen());
              },
            ),
            UIUtils.getButton(
              "MD2TabIndicatorScreen",
              () {
                Get.to(() => MD2TabIndicatorScreen());
              },
            ),
            UIUtils.getButton(
              "MenuHorizontalDataTableScreen",
              () {
                Get.to(() => MenuHorizontalDataTableScreen());
              },
            ),
            UIUtils.getButton(
              "MenuImageScreen",
              () {
                Get.to(() => MenuImageScreen());
              },
            ),
            UIUtils.getButton(
              "ModelBottomSheetScreen",
              () {
                Get.to(() => ModelBottomSheetScreen());
              },
            ),
            UIUtils.getButton(
              "OverflowScreen",
              () {
                Get.to(() => OverflowScreen());
              },
            ),
            UIUtils.getButton(
              "MenuPickerScreen",
              () {
                Get.to(() => MenuPickerScreen());
              },
            ),
            UIUtils.getButton(
              "MenuProgressScreen",
              () {
                Get.to(() => MenuProgressScreen());
              },
            ),
            UIUtils.getButton(
              "scrollable_table_view",
              () {
                Get.to(() => ScrollableTableViewScreen());
              },
            ),
            UIUtils.getButton(
              "shape_of_view",
              () {
                Get.to(ShapeOfViewScreen());
              },
            ),
            UIUtils.getButton(
              "ShimmerScreen",
              () {
                Get.to(ShimmerScreen());
              },
            ),
            UIUtils.getButton(
              "SimpleUrlPreviewScreen",
              () {
                Get.to(SimpleUrlPreviewScreen());
              },
            ),
            UIUtils.getButton(
              "MenuSliderScreen",
              () {
                Get.to(MenuSliderScreen());
              },
            ),
            UIUtils.getButton(
              "StackScreen",
              () {
                Get.to(StackScreen());
              },
            ),
            UIUtils.getButton(
              "StatelessWidgetDemoScreen",
              () {
                Get.to(StatelessWidgetDemoScreen());
              },
            ),
            UIUtils.getButton(
              "StatefulWidgetDemoScreen",
              () {
                Get.to(StatefulWidgetDemoScreen());
              },
            ),
            UIUtils.getButton(
              "StepperScreen",
              () {
                Get.to(() => StepperScreen());
              },
            ),
            UIUtils.getButton(
              "SwitchScreen",
              () {
                Get.to(() => SwitchScreen());
              },
            ),
            UIUtils.getButton(
              "TabPageSelectorScreen",
              () {
                Get.to(() => TabPageSelectorScreen());
              },
            ),
            UIUtils.getButton(
              "TableScreen",
              () {
                Get.to(() => TableScreen());
              },
            ),
            UIUtils.getButton(
              "MenuTextScreen",
              () {
                Get.to(() => MenuTextScreen());
              },
            ),
            UIUtils.getButton(
              "time_planner",
              () {
                Get.to(() => TimePlannerScreen());
              },
            ),
            UIUtils.getButton(
              "TooltipScreen",
              () {
                Get.to(() => TooltipScreen());
              },
            ),
            UIUtils.getButton(
              "VideoPlayerScreen",
              () {
                Get.to(() => VideoPlayerScreen());
              },
            ),
            UIUtils.getButton(
              "WaveScreen",
              () {
                Get.to(() => WaveScreen());
              },
            ),
            UIUtils.getButton(
              "MenuWebviewScreen",
              () {
                Get.to(() => MenuWebviewScreen());
              },
            ),
            UIUtils.getButton(
              "youtube_player_flutter",
              () {
                Get.to(() => YoutubePlayerFlutterScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
