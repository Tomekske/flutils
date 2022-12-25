import 'package:flutter/material.dart';
import 'package:utils/constants/font_size.dart';

/// This widgets provides a scaffold with only an appBar
class DefaultScaffold extends StatefulWidget {
  /// Property contains the [title] of the appBar
  final String title;

  /// Property contains the [body] of the scaffold
  final Widget body;

  DefaultScaffold({
    required this.title,
    required this.body,
  }) : super();

  @override
  State<DefaultScaffold> createState() => _DefaultScaffoldState();
}

class _DefaultScaffoldState extends State<DefaultScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: FontSize.pageTile,
        ),
      ),
      body: widget.body,
    );
  }
}
