import 'package:flutter/material.dart';
import 'package:utils/extensions/scaffold_extension.dart';

/// This widgets provides a scaffold with an appBar and an onWillScope
class BasicScaffold extends StatefulWidget {
  /// Property contains the [title] of the appBar
  final String title;

  /// Property contains the [body] of the scaffold
  final Widget body;

  /// Property contains the appBar [actions]
  List<Widget>? actions;

  /// Property contains a [drawer] which is located on the appBar
  Widget? drawer;

  /// Property contains an [onReturn] callback for both the return button as the onWillPopScope callback
  final Function()? onReturn;

  BasicScaffold({
    required this.title,
    required this.body,
    required this.onReturn,
    this.actions,
    this.drawer,
  }) : super();

  @override
  State<BasicScaffold> createState() => _BasicScaffoldState();
}

class _BasicScaffoldState extends State<BasicScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: widget.drawer,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: widget.onReturn,
        ),
        title: Text(widget.title),
        actions: widget.actions,
      ),
      body: widget.body,
    ).popScope(() async {
      widget.onReturn?.call();

      return false;
    });
  }
}
