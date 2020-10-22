import 'package:flutter/material.dart';

class Options {
  final int id;
  final String title;
  final Color color;

  const Options({
    @required this.id,
    @required this.title,
    this.color = Colors.orange,
  });
}
