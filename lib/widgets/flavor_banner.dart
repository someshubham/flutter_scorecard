import 'package:flutter/material.dart';

import '../app/env.dart';

class FlavorBanner extends StatelessWidget {
  final Widget child;
  final Flavor flavor;

  const FlavorBanner({
    required this.flavor,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (flavor) {
      case Flavor.dev:
        return Directionality(
          textDirection: TextDirection.ltr,
          child: Banner(
            color: flavor.color,
            message: flavor.name,
            location: BannerLocation.topStart,
            child: child,
          ),
        );
      case Flavor.mock:
        return Directionality(
          textDirection: TextDirection.ltr,
          child: Banner(
            color: flavor.color,
            message: flavor.name,
            location: BannerLocation.topStart,
            child: child,
          ),
        );
      case Flavor.prod:
      default:
        return child;
    }
  }
}
