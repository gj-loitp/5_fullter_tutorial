import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/blur/blur_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/overflow_view/overflow_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/picker/menu_picker_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/scrollable_table_view/scrollable_table_view_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/simple_url_preview/simple_url_preview_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/super_circle/super_circle_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/swipe_cards/swipe_cards_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/tab_page_selector/tab_page_selector_sreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/text_view/menu_text_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/wave/wave_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/webview/menu_webview_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'animated_background/animated_background_screen.dart';
import 'another_flushbar/another_flushbar_screen.dart';
import 'appbar/sliver_app_bar_screen.dart';
import 'badges/badges_screen.dart';
import 'bottom_bar/menu_bottom_bar_screen.dart';
import 'bottom_sheet/bottom_sheet_screen.dart';
import 'button/menu_button_screen.dart';
import 'calendar/menu_calendar_screen.dart';
import 'card/card_screen.dart';
import 'chart/fl_chart/ChartScreen.dart';
import 'checkBox/CheckBoxScreen.dart';
import 'checkBox/RadioButtonScreen.dart';
import 'checkBox/RadioButtonScreen2.dart';
import 'clay_containers/clay_containers_screen.dart';
import 'cupertino/MenuCupertinoScreen.dart';
import 'dataTable/DataTableScreen.dart';
import 'dchart/DChartScreen.dart';
import 'delayed_display/delayed_display_screen.dart';
import 'dialog/menu_dialog_screen.dart';
import 'dots_indicator/dots_indicator_screen.dart';
import 'dotted_border/dotted_border_screen.dart';
import 'dotted_line/dotted_line_screen.dart';
import 'drawer/menu_drawer_screen.dart';
import 'drop_shadow/drop_shadow_screen.dart';
import 'easy_loading/easy_loading_screen.dart';
import 'edit_text/menu_edit_text_screen.dart';
import 'expanded/ExpandedScreen.dart';
import 'expansion/MenuExpansionScreen.dart';
import 'flip_card/flip_card_screen.dart';
import 'floating_bubbles/floating_bubbles_screen.dart';
import 'flutter_drawing_board/flutter_drawing_board_screen.dart';
import 'flutter_rating_bar/flutter_rating_bar_screen.dart';
import 'flutter_reaction_button/flutter_reaction_button_screen.dart';
import 'flutter_simple_treeview/flutter_simple_treeview_screen.dart';
import 'folding_cell/folding_cell_screen.dart';
import 'gesture/GestureScreen.dart';
import 'grid/MenuGridScreen.dart';
import 'horizontal_card_pager/horizontal_card_pager.dart';
import 'horizontal_data_table/menu_horizontal_data_table_screen.dart';
import 'image/menu_image_screen.dart';
import 'in_app_review/in_app_review_screen.dart';
import 'inkwell/inkwell_screen.dart';
import 'interactive_viewer/using_interactive_viewer_screen.dart';
import 'layout/menu_layout_screen.dart';
import 'list/menu_list_screen.dart';
import 'md2TabIndicator/Md2TabIndicatorScreen.dart';
import 'modalBottomSheet/model_bottom_sheet_screen.dart';
import 'progress/menu_progress_screen.dart';
import 'shape_of_view/shape_of_view_screen.dart';
import 'shimmer/shimmer_screen.dart';
import 'slide_countdown/slide_countdown_screen.dart';
import 'slider/menu_slider_screen.dart';
import 'sliding_up_panel/sliding_up_panel_screen.dart';
import 'stack/stack_screen.dart';
import 'state/stateful_widget_demo_screen.dart';
import 'state/stateless_widget_demo_screen.dart';
import 'stepper/stepper_screen.dart';
import 'switch/menu_switch_screen.dart';
import 'table/table_screen.dart';
import 'time_planner/time_planner_screen.dart';
import 'tooltip/tooltip_screen.dart';
import 'video/menu_video_screen.dart';
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
              "another_flushbar",
              () {
                Get.to(() => AnotherFlushbarScreen());
              },
              description:
                  "A flexible widget for user notification. Customize your text, button, duration, animations and much more. For Android devs, it is made to replace Snackbars and Toasts.",
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
              "Bottom Bar",
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
              "Button",
              () {
                Get.to(() => MenuButtonScreen());
              },
            ),
            UIUtils.getButton(
              "Calendar",
              () {
                Get.to(() => MenuCalendarScreen());
              },
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
              "Cupertino",
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
              "Dialog",
              () {
                Get.to(() => MenuDialogScreen());
              },
            ),
            UIUtils.getButton(
              "dots_indicator",
              () {
                Get.to(() => DotsIndicatorScreen());
              },
              description:
                  "Dots indicator to show progression of a PageView for example",
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
              "dotted_line",
              () {
                Get.to(() => DottedLineScreen());
              },
              description:
                  "This package allows you to draw dotted lines with Flutter. You can draw a beautiful dotted line",
            ),
            UIUtils.getButton(
              "Drawer",
              () {
                Get.to(() => MenuDrawerScreen());
              },
            ),
            UIUtils.getButton(
              "drop_shadow",
              () {
                Get.to(() => DropShadowScreen());
              },
              description:
                  "Add highly customizable drop shadow effect for any widgets in flutter",
            ),
            UIUtils.getButton(
              "EasyLoadingScreen",
              () {
                Get.to(() => EasyLoadingScreen());
              },
            ),
            UIUtils.getButton(
              "EditText",
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
              "Expansion",
              () {
                Get.to(() => MenuExpansionScreen());
              },
            ),
            UIUtils.getButton(
              "flip_card",
              () {
                Get.to(() => FlipCardScreen());
              },
              description:
                  "A component that provides flip card animation. It could be used for hide and show details of a product.",
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
              "flutter_rating_bar",
              () {
                Get.to(() => FlutterRatingBarScreen());
              },
              description:
                  "A simple yet fully customizable ratingbar for flutter which also include a rating bar indicator, supporting any fraction of rating.",
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
              "Grid",
              () {
                Get.to(() => MenuGridScreen());
              },
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
              "LayoutScreen",
              () {
                Get.to(() => MenuLayoutScreen());
              },
            ),
            UIUtils.getButton(
              "List",
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
              "Horizontal Data Table",
              () {
                Get.to(() => MenuHorizontalDataTableScreen());
              },
            ),
            UIUtils.getButton(
              "Image",
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
              "Picker",
              () {
                Get.to(() => MenuPickerScreen());
              },
            ),
            UIUtils.getButton(
              "Progress - Indicator",
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
              "slide_countdown",
              () {
                Get.to(SlideCountdownScreen());
              },
              description:
                  "A Flutter package to create easy slide animation countdown / countup timer..",
            ),
            UIUtils.getButton(
              "Slider",
              () {
                Get.to(MenuSliderScreen());
              },
            ),
            UIUtils.getButton(
              "sliding_up_panel",
              () {
                Get.to(SlidingUpPanelScreen());
              },
              description:
                  "A draggable Flutter widget that makes implementing a SlidingUpPanel much easier!",
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
              "super_circle",
              () {
                Get.to(() => SuperCircleScreen());
              },
              description:
                  "Amazing animated colored circular widget , you can use it to your profile , loading screen or any widget you want.",
            ),
            UIUtils.getButton(
              "swipe_cards",
              () {
                Get.to(() => SwipeCardsScreen());
              },
              description: "Tinder like swipe cards.",
            ),
            UIUtils.getButton(
              "Switch - Toggle",
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
              "Text",
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
              "Tooltip",
              () {
                Get.to(() => TooltipScreen());
              },
            ),
            UIUtils.getButton(
              "video",
              () {
                Get.to(() => MenuVideoScreen());
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
              "Web view",
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
