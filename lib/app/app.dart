import 'package:flutter/material.dart';
import 'package:flutter_scorecard/app/env.dart';
import 'package:flutter_scorecard/widgets/flavor_banner.dart';

class MyApp extends StatefulWidget {
  final Flavor flavor;

  const MyApp({
    required this.flavor,
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      flavor: widget.flavor,
      child: const MaterialApp(
        home: Scaffold(),
      ),
    );
  }
}
