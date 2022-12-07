import 'package:flutter/material.dart';
import 'package:utils/extensions/scaffold_extension.dart';
import 'package:utils/extensions/string_extension.dart';

/// This widgets provides a scaffold with a widget that is displayed within the appBar and an onWillScope
class FlexibleScaffold extends StatefulWidget {
  /// Property contains the [title] of the appBar
  /// The default value is ''
  String? title;

  /// Property contains the [height] of the picture
  /// The default value is 200.0
  double? height;

  /// Property contains the [widget] which is displayed within the appBar
  Widget widget;

  /// How to [fit] the image into the space allocated during layout
  /// The default value is BoxFit.cover
  BoxFit? fit;

  /// Property contains the [body] of the scaffold
  final Widget body;

  /// Property contains a [drawer] which is located on the appBar
  List<Widget>? actions;

  /// Property contains a bool which shows a [floatingActionButton]
  /// By default the floatingActionButton is not displayed, value is false
  bool? showButton;

  /// Property contains a [onButtonPressed] callback whenever the button is pressed
  Function()? onButtonPressed;

  /// Property contains an [onReturn] callback for both the return button as the onWillPopScope callback
  final Function()? onReturn;

  FlexibleScaffold({
    this.title,
    this.height,
    required this.widget,
    this.fit,
    required this.body,
    required this.onReturn,
    this.showButton,
    this.onButtonPressed,
    this.actions,
  }) : super();

  @override
  State<FlexibleScaffold> createState() => _FlexibleScaffoldState();
}

class _FlexibleScaffoldState extends State<FlexibleScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(widget.height ?? 200.0),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: widget.onReturn,
          ),
          flexibleSpace: widget.widget,
          title: Text(widget.title ?? StringExtension.empty()),
          actions: widget.actions,
        ),
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
