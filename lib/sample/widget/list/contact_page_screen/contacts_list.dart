import 'package:flutter/material.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';

import 'contact_list_item.dart';
import 'contact_modal.dart';

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
