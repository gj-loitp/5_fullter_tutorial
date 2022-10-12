import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/BaseStatefulState.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'home_cubit.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class CubitScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CubitScreenState();
  }
}

class _CubitScreenState extends BaseStatefulState<CubitScreen> {
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
        "CubitScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: BlocProvider(
        create: (_) => HomeCubit()..fetchUsers(),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            switch (state.status) {
              case HomeStatus.failure:
                return const Center(child: Text('failed to fetch topics'));
              case HomeStatus.success:
                // if (state.topics.isEmpty) {
                //   return const Center(child: Text('no users'));
                // }
                return _buildUserList(state);
              default:
                return Center(
                    child: CircularProgressIndicator(
                        color: Theme.of(context).primaryColor));
            }
          },
        ),
      ),
    );
  }

  Widget _buildUserList(HomeState state) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          child: Column(
            children: [
              Text("id: ${state.users[index].id}"),
              Image.network(
                "${state.users[index].avatar}",
                width: 150,
                height: 150,
              ),
              Text("firstName: ${state.users[index].firstName}"),
              Text("lastName: ${state.users[index].lastName}"),
              Text("email: ${state.users[index].email}"),
            ],
          ),
        );
      },
      itemCount: state.users.length,
    );
  }
}
