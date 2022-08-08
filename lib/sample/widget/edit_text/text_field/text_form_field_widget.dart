import 'package:flutter/material.dart';

import 'password_field.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  final GlobalKey<FormFieldState<String>> _passwordFieldKey =
      new GlobalKey<FormFieldState<String>>();

  String? _name;
  String? _phoneNumber;
  String? _email;
  String? _password;

  String? _validateName(String? value) {
    if (value!.isEmpty) return 'Name is required.';
    final RegExp nameExp = new RegExp(r'^[A-Za-z ]+$');
    if (!nameExp.hasMatch(value))
      return 'Please enter only alphabetical characters.';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 15.0),
        TextFormField(
          textCapitalization: TextCapitalization.words,
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            filled: true,
            icon: Icon(Icons.person),
            hintText: 'What do people call you?',
            labelText: 'Name *',
          ),
          onSaved: (String? value) {
            this._name = value;
          },
          validator: _validateName,
        ),
        SizedBox(height: 15.0),
        // "Phone number" form.
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            filled: true,
            icon: Icon(Icons.phone),
            hintText: 'Where can we reach you?',
            labelText: 'Phone Number *',
            prefixText: '+86',
          ),
          keyboardType: TextInputType.phone,
          onSaved: (String? value) {
            this._phoneNumber = value;
          },
          // TextInputFormatters are applied in sequence.
          // inputFormatters: <TextInputFormatter>[
          //   WhitelistingTextInputFormatter.digitsOnly,
          // ],//TODO check coi s k xai dc field nay
        ),
        SizedBox(height: 15.0),
        // "Email" form.
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            filled: true,
            icon: Icon(Icons.email),
            hintText: 'Your email address',
            labelText: 'E-mail',
          ),
          keyboardType: TextInputType.emailAddress,
          onSaved: (String? value) {
            this._email = value;
          },
        ),
        SizedBox(height: 24.0),
        // "Life story" form.
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Tell us about yourself',
            helperText: 'Keep it short, this is just a demo.',
            labelText: 'Life story',
          ),
          maxLines: 3,
        ),
        SizedBox(height: 15.0),
        // "Salary" form.
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Salary',
              prefixText: '\$',
              suffixText: 'USD',
              suffixStyle: TextStyle(color: Colors.green)),
          maxLines: 1,
        ),
        SizedBox(height: 15.0),
        // "Password" form.
        PasswordField(
          fieldKey: _passwordFieldKey,
          helperText: 'No more than 8 characters.',
          labelText: 'Password *',
          onFieldSubmitted: (String value) {
            setState(() {
              this._password = value;
            });
          },
        ),
        SizedBox(height: 15.0),
        // "Re-type password" form.
        TextFormField(
          enabled: this._password != null && this._password!.isNotEmpty,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            filled: true,
            labelText: 'Re-type password',
          ),
          maxLength: 8,
          obscureText: true,
        ),
      ],
    );
  }
}
