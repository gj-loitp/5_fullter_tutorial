import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FormFieldScreen extends StatefulWidget {
  @override
  _FormFieldScreenState createState() => _FormFieldScreenState();
}

class _FormFieldScreenState extends State<FormFieldScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isAutoValidate = false;
  var _name;
  var _tel;
  var _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: UIUtils.getAppBar(
          "FormFieldScreen",
          () {
            Get.back();
          },
          null,
        ),
        body: Container(
          margin: const EdgeInsets.all(DimenConstants.marginPaddingMedium),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Form(
                // onWillPop: willPop,
                key: _formKey,
                // autovalidate: _isAutoValidate,//TODO check coi sao ko xai dc field nay
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Name'),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onSaved: (value) => _name = value,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Tel'),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value!.length != 11)
                          return 'Tel Number must be 11 digit';
                        else
                          return null;
                      },
                      onSaved: (value) => _tel = value,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Email'),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        Pattern pattern =
                            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                        RegExp regex = new RegExp(pattern as String);
                        if (!regex.hasMatch(value!))
                          return 'Not Valid Email';
                        else
                          return null;
                      },
                      onSaved: (value) => _email = value,
                    ),
                    SizedBox(height: 10),
                    UIUtils.getButton(
                        "Validate input", () => _validateInputs()),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  void _validateInputs() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    } else {
      // After input, turn on automatic inspection
      setState(() => _isAutoValidate = true);
    }
  }
}
