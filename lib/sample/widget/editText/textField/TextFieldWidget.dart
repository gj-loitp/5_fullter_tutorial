import 'package:flutter/material.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  var _selection;
  var _textInputActionSelection = TextInputAction.done;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        keyboardType: _selection,
        decoration: InputDecoration(
          labelText: 'labelText',
          contentPadding: EdgeInsets.all(15.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onChanged: (value) {
          print("onChanged value " + value.toString());
        },
        autofocus: false,
      ),
    );
  }
}
