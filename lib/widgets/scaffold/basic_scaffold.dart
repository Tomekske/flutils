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

  /// Property contains a bool which shows a [floatingActionButton]
  bool? showButton;

  /// Property contains a [onButtonPressed] callback whenever the button is pressed
  Function()? onButtonPressed;

  BasicScaffold({
    required this.title,
    required this.body,
    this.actions,
    this.drawer,
    this.showButton,
    this.onButtonPressed,
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
        title: Text(widget.title),
        actions: widget.actions,
      ),
      body: widget.body,
      floatingActionButton: (widget.showButton ?? false)
          ? FloatingActionButton(
              elevation: 10.0,
              onPressed: widget.onButtonPressed,
              child: Icon(
                Icons.add,
                color: Theme.of(context).iconTheme.color,
              ),
            )
          : null,
    );
  }
}
