import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Content {
  final String name;
  final String imageUrl;
  final String titleImageUrl;

  const Content({
    @required this.name,
    @required this.imageUrl,
    this.titleImageUrl,

  });
}
