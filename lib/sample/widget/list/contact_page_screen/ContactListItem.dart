import 'package:flutter/material.dart';

import 'ContactModal.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ContactListItem extends StatelessWidget {
  final ContactModal _contactModal;

  ContactListItem(this._contactModal);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text(_contactModal.fullName![0])),
      title: Text(_contactModal.fullName!),
      subtitle: Text(_contactModal.email!),
    );
  }
}
