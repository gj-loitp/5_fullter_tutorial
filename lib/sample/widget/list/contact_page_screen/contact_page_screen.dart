import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'contact_modal.dart';
import 'contacts_list.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ContactPageScreen extends StatelessWidget {
  _buildContactList() {
    return <ContactModal>[
      const ContactModal(
        fullName: 'Romain Hoogmoed',
        email: 'romain.hoogmoed@example.com',
      ),
      const ContactModal(
        fullName: 'Emilie Olsen',
        email: 'emilie.olsen@example.com',
      ),
      const ContactModal(
        fullName: 'Nishant Srivastava',
        email: 'nishant.srivastava@example.com',
      ),
      const ContactModal(
        fullName: 'Romain Hoogmoed',
        email: 'romain.hoogmoed@example.com',
      ),
      const ContactModal(
        fullName: 'Emilie Olsen',
        email: 'emilie.olsen@example.com',
      ),
      const ContactModal(
        fullName: 'Nishant Srivastava',
        email: 'nishant.srivastava@example.com',
      ),
      const ContactModal(
        fullName: 'Romain Hoogmoed',
        email: 'romain.hoogmoed@example.com',
      ),
      const ContactModal(
        fullName: 'Emilie Olsen',
        email: 'emilie.olsen@example.com',
      ),
      const ContactModal(
        fullName: 'Nishant Srivastava',
        email: 'nishant.srivastava@example.com',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ContactPageScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: ContactsList(_buildContactList()),
    );
  }
}
