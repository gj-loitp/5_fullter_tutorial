import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:flutter/material.dart';

import 'ContactListItem.dart';
import 'ContactModal.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ContactsList extends StatelessWidget {
  final List<ContactModal> listContactModal;

  ContactsList(this.listContactModal);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
      children: _buildContactsList(),
    );
  }

  List<ContactListItem> _buildContactsList() {
    return listContactModal.map((contact) => ContactListItem(contact)).toList();
  }
}
