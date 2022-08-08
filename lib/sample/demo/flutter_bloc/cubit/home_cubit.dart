import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_word/sample/demo/flutter_bloc/cubit/repository.dart';
import 'package:hello_word/sample/demo/flutter_bloc/cubit/user.dart';

part 'home_state.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState._());

  Future<void> fetchUsers([int page = 1]) async {
    try {
      final response = await getUsers(page);
      final res = json.decode(response.body);
      if (response.statusCode == 200) {
        List<User> result =
            res['data'].map<User>((p) => User.fromJson(p)).toList();
        emit(HomeState.success(status: HomeStatus.success, users: result));
      } else {
        emit(const HomeState.failure());
      }
    } on Exception {
      emit(const HomeState.failure());
    }
  }
}
