import 'package:com.roy93group.flutter_tutorial/lib/core/BaseStatefulState.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'counter_cubit.dart';
import 'counter_view.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FlutterBlockCounterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterBlockCounterScreenState();
  }
}

class _FlutterBlockCounterScreenState
    extends BaseStatefulState<FlutterBlockCounterScreen> {
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
        "FlutterBlockCounterScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: BlocProvider(
        create: (_) => CounterCubit(),
        child: CounterView(),
      ),
    );
  }
}
