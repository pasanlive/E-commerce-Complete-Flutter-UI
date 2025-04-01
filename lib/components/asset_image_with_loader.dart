import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'skleton/skelton.dart';

class AssetImageWithLoader extends StatelessWidget {
  final BoxFit fit;

  const AssetImageWithLoader(
    this.src, {
    super.key,
    this.fit = BoxFit.fitHeight,
    this.radius = defaultPadding,
  });

  final String src;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(topRight: Radius.circular(radius), bottomLeft: Radius.zero, topLeft: Radius.circular(radius), bottomRight: Radius.zero,),
      child: Image.asset(
        "images/modern_banne.jpg",
        fit: fit,


      ),
    );
  }
}
