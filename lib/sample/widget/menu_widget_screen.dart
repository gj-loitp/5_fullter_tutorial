import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/animated_background/animated_background_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/blur/blur_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/bottom_bar/menu_bottom_bar_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/bottom_sheet/bottom_sheet_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/chart/chart_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/check_box/check_box_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/check_box/radio_button_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/check_box/radio_button_screen_2.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/data_table/data_table_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/delayed_display/delayed_display_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/dotted_border/dotted_border_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/easy_loading/easy_loading_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/edit_text/menu_edit_text_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/in_app_review/in_app_review_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/interactive_viewer/using_interactive_viewer_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/md2_tab_indicator/md2_tab_indicator_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/menu_horizontal_data_table/menu_horizontal_data_table_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/menu_image/menu_image_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/modal_bottom_sheet/model_bottom_sheet_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/overflow_view/overflow_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/picker/menu_picker_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/simple_url_preview/simple_url_preview_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/tab_page_selector/tab_page_selector_sreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/text_view/menu_text_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/video_player/video_player_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/wave/wave_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/webview/menu_webview_screen.dart';

import 'appbar/sliver_app_bar_screen.dart';
import 'button/menu_button_screen.dart';
import 'card/card_screen.dart';
import 'clay_containers/clay_containers_screen.dart';
import 'cupertino/menu_cupertino_screen.dart';
import 'dialog/dialog_screen.dart';
import 'drawer/menu_drawer_screen.dart';
import 'expanded/expanded_screen.dart';
import 'expansion/menu_expansion_screen.dart';
import 'flutter_reaction_button/flutter_reaction_button_screen.dart';
import 'gesture/gesture_screen.dart';
import 'grid/menu_grid_screen.dart';
import 'horizontal_card_pager/horizontal_card_pager.dart';
import 'inkwell/inkwell_screen.dart';
import 'layout/menu_layout_screen.dart';
import 'list/menu_list_screen.dart';
import 'progress/menu_progress_screen.dart';
import 'shimmer/shimmer_screen.dart';
import 'slider/menu_slider_screen.dart';
import 'stack/stack_screen.dart';
import 'state/stateful_widget_demo_screen.dart';
import 'state/stateless_widget_demo_screen.dart';
import 'stepper/stepper_screen.dart';
import 'switch/switch_screen.dart';
import 'table/table_screen.dart';
import 'tooltip/tooltip_screen.dart';

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
              "AnimatedBackgroundScreen",
              () {
                Get.to(AnimatedBackgroundScreen());
              },
            ),
            UIUtils.getButton(
              "SliverAppBarScreen",
              () {
                Get.to(SliverAppBarScreen());
              },
            ),
            UIUtils.getButton(
              "BlurScreen",
              () {
                Get.to(BlurScreen());
              },
            ),
            UIUtils.getButton(
              "MenuBottomBarScreen",
              () {
                Get.to(MenuBottomBarScreen());
              },
            ),
            UIUtils.getButton(
              "BottomSheetScreen",
              () {
                Get.to(BottomSheetScreen());
              },
            ),
            UIUtils.getButton(
              "MenuButtonScreen",
              () {
                Get.to(MenuButtonScreen());
              },
            ),
            UIUtils.getButton(
              "CardScreen",
              () {
                Get.to(CardScreen());
              },
            ),
            UIUtils.getButton(
              "ChartScreen",
              () {
                Get.to(ChartScreen());
              },
            ),
            UIUtils.getButton(
              "CheckBoxScreen",
              () {
                Get.to(CheckBoxScreen());
              },
            ),
            UIUtils.getButton(
              "ClayContainersScreen",
                  () {
                Get.to(ClayContainersScreen());
              },
            ),
            UIUtils.getButton(
              "RadioButtonScreen",
              () {
                Get.to(RadioButtonScreen());
              },
            ),
            UIUtils.getButton(
              "RadioButtonScreen2",
              () {
                Get.to(RadioButtonScreen2());
              },
            ),
            UIUtils.getButton(
              "MenuCupertinoScreen",
              () {
                Get.to(MenuCupertinoScreen());
              },
            ),
            UIUtils.getButton(
              "DataTableScreen",
              () {
                Get.to(DataTableScreen());
              },
            ),
            UIUtils.getButton(
              "DelayedDisplayScreen",
              () {
                Get.to(DelayedDisplayScreen());
              },
            ),
            UIUtils.getButton(
              "DialogScreen",
              () {
                Get.to(DialogScreen());
              },
            ),
            UIUtils.getButton(
              "MenuDrawerScreen",
              () {
                Get.to(MenuDrawerScreen());
              },
            ),
            UIUtils.getButton(
              "EasyLoadingScreen",
              () {
                Get.to(EasyLoadingScreen());
              },
            ),
            UIUtils.getButton(
              "MenuEditTextScreen",
              () {
                Get.to(MenuEditTextScreen());
              },
            ),
            UIUtils.getButton(
              "ExpandedScreen",
              () {
                Get.to(ExpandedScreen());
              },
            ),
            UIUtils.getButton(
              "MenuExpansionScreen",
              () {
                Get.to(MenuExpansionScreen());
              },
            ),
            UIUtils.getButton(
              "FlutterReactionButtonScreen",
              () {
                Get.to(FlutterReactionButtonScreen());
              },
            ),
            UIUtils.getButton(
              "GestureScreen",
                  () {
                Get.to(GestureScreen());
              },
            ),
            UIUtils.getButton(
              "MenuGridScreen",
              () {
                Get.to(MenuGridScreen());
              },
            ),
            UIUtils.getButton(
              "HorizontalCardPagerScreen",
              () {
                Get.to(HorizontalCardPagerScreen());
              },
            ),
            UIUtils.getButton(
              "InAppReviewScreen",
                  () {
                Get.to(InAppReviewScreen());
              },
            ),
            UIUtils.getButton(
              "InkwellScreen",
              () {
                Get.to(InkwellScreen());
              },
            ),
            UIUtils.getButton(
              "UsingInteractiveViewerScreen",
              () {
                Get.to(UsingInteractiveViewerScreen());
              },
            ),
            UIUtils.getButton(
              "MenuLayoutScreen",
              () {
                Get.to(MenuLayoutScreen());
              },
            ),
            UIUtils.getButton(
              "MenuListScreen",
              () {
                Get.to(MenuListScreen());
              },
            ),
            UIUtils.getButton(
              "MD2TabIndicatorScreen",
              () {
                Get.to(MD2TabIndicatorScreen());
              },
            ),
            UIUtils.getButton(
              "MenuHorizontalDataTableScreen",
              () {
                Get.to(MenuHorizontalDataTableScreen());
              },
            ),
            UIUtils.getButton(
              "MenuImageScreen",
              () {
                Get.to(MenuImageScreen());
              },
            ),
            UIUtils.getButton(
              "ModelBottomSheetScreen",
                  () {
                Get.to(ModelBottomSheetScreen());
              },
            ),
            UIUtils.getButton(
              "OverflowScreen",
              () {
                Get.to(OverflowScreen());
              },
            ),
            UIUtils.getButton(
              "MenuPickerScreen",
              () {
                Get.to(MenuPickerScreen());
              },
            ),
            UIUtils.getButton(
              "DottedBorderScreen",
              () {
                Get.to(DottedBorderScreen());
              },
            ),
            UIUtils.getButton(
              "MenuProgressScreen",
              () {
                Get.to(MenuProgressScreen());
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
                Get.to(StepperScreen());
              },
            ),
            UIUtils.getButton(
              "SwitchScreen",
              () {
                Get.to(SwitchScreen());
              },
            ),
            UIUtils.getButton(
              "TabPageSelectorScreen",
              () {
                Get.to(TabPageSelectorScreen());
              },
            ),
            UIUtils.getButton(
              "TableScreen",
              () {
                Get.to(TableScreen());
              },
            ),
            UIUtils.getButton(
              "MenuTextScreen",
              () {
                Get.to(MenuTextScreen());
              },
            ),
            UIUtils.getButton(
              "TooltipScreen",
              () {
                Get.to(TooltipScreen());
              },
            ),
            UIUtils.getButton(
              "VideoPlayerScreen",
              () {
                Get.to(VideoPlayerScreen());
              },
            ),
            UIUtils.getButton(
              "WaveScreen",
              () {
                Get.to(WaveScreen());
              },
            ),
            UIUtils.getButton(
              "MenuWebviewScreen",
              () {
                Get.to(MenuWebviewScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
