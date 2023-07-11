// ignore_for_file: public_member_api_docs

import 'package:cached_network_image/cached_network_image.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HeroPokemonImage extends StatelessWidget {
  const HeroPokemonImage({
    required this.imageUrl,
    required this.id,
    super.key,
  });

  final String imageUrl;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: id.toString(),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        placeholder: (context, url) => DSIcon.unconstrained(
          icon: DSIconPath.pokeball,
          color: Theme.of(context).disabledColor,
        ),
        errorWidget: (context, url, error) => Center(
          child: Icon(
            Icons.error,
            color: Theme.of(context).colorScheme.error,
            size: DSConstSize.iconSizeXLarge,
          ),
        ),
        fit: BoxFit.contain,
      ),
    );
  }
}
