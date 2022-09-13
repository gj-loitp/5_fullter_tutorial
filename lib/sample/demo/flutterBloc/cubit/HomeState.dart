part of 'HomeCubit.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
enum HomeStatus { initial, success, failure }

class HomeState extends Equatable {
  const HomeState._({
    this.status = HomeStatus.initial,
    this.users = const <User>[],
  });

  const HomeState.success({
    required HomeStatus status,
    required List<User> users,
  }) : this._(status: HomeStatus.success, users: users);

  const HomeState.failure() : this._(status: HomeStatus.failure);

  final HomeStatus status;
  final List<User> users;

  @override
  List<Object> get props => [status, users];
}
