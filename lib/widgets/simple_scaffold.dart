import 'package:flutter/material.dart';
import 'package:utils/extensions/scaffold_extension.dart';

/// This widgets provides a scaffold with an appBar and an onWillScope
class SimpleScaffold extends StatefulWidget {
  /// Property contains the [title] of the appBar
  final String title;

  /// Property contains the [body] of the scaffold
  final Widget body;

  /// Property contains an [onReturn] callback for both the return button as the onWillPopScope callback
  final Function()? onReturn;

  SimpleScaffold(
      {required this.title, required this.body, required this.onReturn})
      : super();

  @override
  State<SimpleScaffold> createState() => _SimpleScaffoldState();
}

class _SimpleScaffoldState extends State<SimpleScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: widget.onReturn,
        ),
        title: Text(widget.title),
      ),
      body: widget.body,
    ).popScope(() async {
      widget.onReturn?.call();

      return false;
    });
  }
}
