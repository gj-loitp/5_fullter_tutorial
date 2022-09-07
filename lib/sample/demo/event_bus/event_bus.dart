import 'package:event_bus/event_bus.dart';
import 'package:com.roy93group.flutter_tutorial/sample/model/people.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
EventBus eventBus = EventBus();

class UserLoggedInEvent {
  People people;

  UserLoggedInEvent(this.people);
}
