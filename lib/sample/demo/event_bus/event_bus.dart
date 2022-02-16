import 'package:event_bus/event_bus.dart';
import 'package:hello_word/sample/model/people.dart';

EventBus eventBus = EventBus();

class UserLoggedInEvent {
  People people;

  UserLoggedInEvent(this.people);
}
