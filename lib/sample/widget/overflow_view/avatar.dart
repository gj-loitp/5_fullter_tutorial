import 'package:flutter/material.dart';

class Avatar {
  const Avatar(this.initials, this.color);

  final String initials;
  final Color color;
}

const List<Avatar> avatars = <Avatar>[
  Avatar('AD', Colors.green),
  Avatar('JG', Colors.pink),
  Avatar('DA', Colors.blue),
  Avatar('JA', Colors.black),
  Avatar('CB', Colors.amber),
  Avatar('RR', Colors.deepPurple),
  Avatar('JD', Colors.pink),
  Avatar('MB', Colors.amberAccent),
  Avatar('AA', Colors.blueAccent),
  Avatar('BA', Colors.tealAccent),
  Avatar('CR', Colors.yellow),
];
