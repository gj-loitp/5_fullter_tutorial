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
import 'flutter_drawing_board/flutter_drawing_board_screen.dart';
import 'flutter_reaction_button/flutter_reaction_button_screen.dart';
import 'flutter_simple_treeview/flutter_simple_treeview_screen.dart';
import 'folding_cell/folding_cell_screen.dart';
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
import 'switch/menu_switch_screen.dart';
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
              description:
                  "Animated Backgrounds for Flutter. Easily extended to paint whatever you want on the canvas.",
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
              description:
                  "A flutter package for creating badges. Badges can be used for an additional marker for any widget, e.g. show a number of items in a shopping cart.",
            ),
            UIUtils.getButton(
              "blur",
              () {
                Get.to(() => BlurScreen());
              },
              description:
                  "Blur is a wrapper widget that blur it's child. There are ImageBlur.asset and ImageBlur.network that blur the image. Frost is another wrapper which blurs the background.",
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
              description:
                  "Flutter package for custom AppBar with full calendar view with many new features!",
            ),
            UIUtils.getButton(
              "calendar_view",
              () {
                Get.to(() => CalendarViewScreen());
              },
              description:
                  "A Flutter package allows you to easily implement all calendar UI and calendar event functionality.",
            ),
            UIUtils.getButton(
              "CardScreen",
              () {
                Get.to(() => CardScreen());
              },
            ),
            UIUtils.getButton(
              "fl_chart",
              () {
                Get.to(() => ChartScreen());
              },
              description:
                  "A powerful Flutter chart library, currently supporting Line Chart, Bar Chart and Pie Chart.",
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
              description:
                  "Easily create custom neumorphic container widgets for your own unique design.",
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
              description: "D'Chart is a package for compact chart widgets.",
            ),
            UIUtils.getButton(
              "delayed_display",
              () {
                Get.to(() => DelayedDisplayScreen());
              },
              description:
                  "A widget that enables you to display a child after a delay and with beautiful fading and sliding animation.",
            ),
            UIUtils.getButton(
              "MenuDialogScreen",
              () {
                Get.to(() => MenuDialogScreen());
              },
            ),
            UIUtils.getButton(
              "dotted_border",
              () {
                Get.to(() => DottedBorderScreen());
              },
              description:
                  "A flutter package to let users easily add a dashed border around any widget.",
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
              description:
                  "A Flutter Package for adding Floating bubbles on the Foreground to any Flutter widget.",
            ),
            UIUtils.getButton(
              "flutter_simple_treeview",
              () {
                Get.to(() => FlutterSimpleTreeViewScreen());
              },
              description:
                  "A widget, that visualises a tree structure, where a node can be any widget.",
            ),
            UIUtils.getButton(
              "folding_cell",
              () {
                Get.to(() => FoldingCellScreen());
              },
              description:
                  "Simple folding cell widget, pass frontWidget and innerWidget to fold and unfold.",
            ),
            UIUtils.getButton(
              "flutter_drawing_board",
              () {
                Get.to(() => FlutterDrawingBoardScreen());
              },
              description:
                  "A Flutter package of drawing board, provides basic drawing tools, canvas operations, and image data acquisition.",
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
              description:
                  "A flutter plugin to show horizontal view of calendar with date picker.",
            ),
            UIUtils.getButton(
              "HorizontalCardPagerScreen",
              () {
                Get.to(() => HorizontalCardPagerScreen());
              },
            ),
            UIUtils.getButton(
              "in_app_review",
              () {
                Get.to(() => InAppReviewScreen());
              },
              description:
                  "Flutter plugin for showing the In-App Review/System Rating pop up on Android, iOS and MacOS. It makes it easy for users to rate your app.",
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
              "overflow_view",
              () {
                Get.to(() => OverflowScreen());
              },
              description:
                  "A widget displaying children in a line with an overflow indicator at the end if there is not enough space.",
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
              description:
                  "This is a multi axis scrollable data table, that allows you to scroll on both the vertical and horizontal axis, with the header remaining static on the vertical axis.",
            ),
            UIUtils.getButton(
              "shape_of_view",
              () {
                Get.to(ShapeOfViewScreen());
              },
              description:
                  "Give a custom shape to any flutter widget, Material Design 2 ready",
            ),
            UIUtils.getButton(
              "ShimmerScreen",
              () {
                Get.to(ShimmerScreen());
              },
            ),
            UIUtils.getButton(
              "simple_url_preview",
              () {
                Get.to(SimpleUrlPreviewScreen());
              },
              description:
                  "Flutter package to show url preview. Custamizable height, background and text styles, as well as lines.",
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
              "MenuSwitchScreen",
              () {
                Get.to(() => MenuSwitchScreen());
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
              description:
                  "A beautiful, easy to use and customizable time planner for flutter mobile, desktop and web",
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
              "wave",
              () {
                Get.to(() => WaveScreen());
              },
              description:
                  "Widget for displaying waves with custom color, duration, floating and blur effects.",
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
              description:
                  "Flutter plugin for playing or streaming inline YouTube videos using the official iFrame player API. This plugin supports both Android and iOS.",
            ),
          ],
        ),
      ),
    );
  }
}
