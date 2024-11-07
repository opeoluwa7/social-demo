// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class WallPost extends StatelessWidget {
   WallPost({super.key, required this.message, required this.user});

  String message;
  String user;

  @override
  Widget build(BuildContext context) {
    return Row(children: [Column(
      children: [
        Text(user),
        Text(message),
      ],
    )],);
  }
}
