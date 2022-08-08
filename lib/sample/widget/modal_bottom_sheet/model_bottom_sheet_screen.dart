import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'circular_modal.dart';
import 'floating_modal.dart';
import 'modal_complex_all.dart';
import 'modal_fit.dart';
import 'modal_inside_modal.dart';
import 'modal_will_scope.dart';
import 'modal_with_navigator.dart';
import 'modal_with_nested_scroll.dart';
import 'modal_with_page_view.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ModelBottomSheetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ModelBottomSheetScreen",
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
              "Material fit",
              () {
                showMaterialModalBottomSheet(
                  expand: false,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalFit(),
                );
              },
            ),
            UIUtils.getButton(
              "Bar Modal",
              () {
                showBarModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalInsideModal(),
                );
              },
            ),
            UIUtils.getButton(
              "Avatar Modal",
              () {
                showAvatarModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalInsideModal(),
                );
              },
            ),
            UIUtils.getButton(
              "Float Modal",
              () {
                showFloatingModalBottomSheet(
                  context: context,
                  builder: (context) => ModalFit(),
                );
              },
            ),
            UIUtils.getButton(
              "Cupertino Modal fit",
              () {
                showCupertinoModalBottomSheet(
                  expand: false,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalFit(),
                );
              },
            ),
            UIUtils.getButton(
              "Cupertino Small Modal forced to expand",
              () {
                showCupertinoModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalFit(),
                );
              },
            ),
            UIUtils.getButton(
              "Reverse list",
              () {
                showBarModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalInsideModal(reverse: true),
                );
              },
            ),
            UIUtils.getButton(
              "Cupertino Modal inside modal",
              () {
                showCupertinoModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalInsideModal(),
                );
              },
            ),
            UIUtils.getButton(
              "Cupertino Modal with inside navigation",
              () {
                showCupertinoModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalWithNavigator(),
                );
              },
            ),
            UIUtils.getButton(
              "Cupertino Navigator + Scroll + WillPopScope",
              () {
                showCupertinoModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ComplexModal(),
                );
              },
            ),
            UIUtils.getButton(
              "Modal with WillPopScope",
              () {
                showCupertinoModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalWillScope(),
                );
              },
            ),
            UIUtils.getButton(
              "Modal with Nested Scroll",
              () {
                showCupertinoModalBottomSheet(
                  expand: true,
                  context: context,
                  builder: (context) => NestedScrollModal(),
                );
              },
            ),
            UIUtils.getButton(
              "Modal with PageView",
              () {
                showBarModalBottomSheet(
                  expand: true,
                  context: context,
                  builder: (context) => ModalWithPageView(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
