import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/demo/flutter_bloc/counter/counter_cubit.dart';
import 'package:hello_word/sample/demo/flutter_bloc/counter/counter_view.dart';

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
