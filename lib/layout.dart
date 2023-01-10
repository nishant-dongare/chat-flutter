import 'package:flutter/material.dart';
import 'package:hike/home.dart';
import 'package:hike/web.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) =>
          constraints.maxWidth > 700 ? const Web() : const Home()),
    );
  }
}
