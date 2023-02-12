import 'package:flutter/material.dart';

enum Flavor { prod, dev, mock }

extension FlavorX on Flavor {
  // ignore: missing_return
  String get name {
    switch (this) {
      case Flavor.prod:
        return 'Prod';
      case Flavor.dev:
        return 'Dev';
      case Flavor.mock:
        return 'Mock';
    }
  }

  Color get color {
    switch (this) {
      case Flavor.prod:
        return Colors.green;
      case Flavor.dev:
        return Colors.teal;
      case Flavor.mock:
        return Colors.blue;
    }
  }
}
