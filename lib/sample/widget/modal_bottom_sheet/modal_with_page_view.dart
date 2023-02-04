import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ModalWithPageView extends StatelessWidget {
  const ModalWithPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar:
            AppBar(leading: Container(), title: Text('Modal With Page View')),
        body: SafeArea(
          bottom: false,
          child: PageView(
            children: List.generate(
                2,
                (index) => ListView(
                      shrinkWrap: true,
                      controller: ModalScrollController.of(context),
                      children: ListTile.divideTiles(
                        context: context,
                        tiles: List.generate(
                            100,
                            (index) => ListTile(
                                  title: Text('Item'),
                                )),
                      ).toList(),
                    )),
          ),
        ),
      ),
    );
  }
}
