import 'package:flutter/material.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class TileWidget extends StatelessWidget {
  const TileWidget(
      {Key? key, required this.index, this.backgroundColor = Colors.green})
      : super(key: key);

  final int index;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text('$index'),
        ),
      ),
    );
  }
}
