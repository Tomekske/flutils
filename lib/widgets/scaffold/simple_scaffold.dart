import 'package:flutter/material.dart';
import 'package:utils/constants/font_size.dart';
import 'package:utils/extensions/scaffold_extension.dart';

/// This widgets provides a scaffold with an appBar and an onWillScope
class SimpleScaffold extends StatefulWidget {
  /// Property contains the [title] of the appBar
  final String title;

  /// Property contains the [body] of the scaffold
  final Widget body;

  /// Property contains a [drawer] which is located on the appBar
  List<Widget>? actions;

  /// Property contains a bool which shows a [floatingActionButton]
  bool? showButton;

  /// Property contains a [onButtonPressed] callback whenever the button is pressed
  Function()? onButtonPressed;

  /// Property contains an [onReturn] callback for both the return button as the onWillPopScope callback
  final Function()? onReturn;

  SimpleScaffold({
    required this.title,
    required this.body,
    required this.onReturn,
    this.showButton,
    this.onButtonPressed,
    this.actions,
  }) : super();

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
        title: Text(
          widget.title,
          style: FontSize.pageTile,
        ),
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
    ).popScope(() async {
      widget.onReturn?.call();

      return false;
    });
  }
}
