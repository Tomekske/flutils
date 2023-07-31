import 'package:flutils/data/enums/input_mode.dart';
import 'package:flutter/material.dart';

class MaterialTextBox extends StatefulWidget {
  /// Property contains a [key]
  @override
  Key? key;

  /// Property contains the [hint] text of the input box
  final String hint;

  /// Property contains the input [controller] object
  final TextEditingController controller;

  /// Property to set the [inputMode]
  final InputMode inputMode;

  /// Property to set the [keyboardType]
  TextInputType? keyboardType;

  /// Property to set the [textInputAction]
  /// The visual appearance does not cause any special behavior.
  TextInputAction? textInputAction;

  /// Property to set the [autoFocus] on the input box
  bool? autoFocus;

  /// The [onSubmit] callback contains the input box's text
  Function(String text)? onSubmit;

  /// A class that provides platform-specific Material UI input box widget.
  MaterialTextBox({
    this.key,
    required this.hint,
    required this.controller,
    required this.inputMode,
    this.keyboardType,
    this.textInputAction,
    this.autoFocus,
    this.onSubmit,
  }) : super();

  @override
  _MaterialTextBoxState createState() => _MaterialTextBoxState();
}

class _MaterialTextBoxState extends State<MaterialTextBox> {
  FocusNode? focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: TextFormField(
          key: widget.key,
          focusNode: focusNode,
          autofocus: widget.autoFocus ?? false,
          controller: widget.controller,
          decoration: InputDecoration(
            fillColor: Theme.of(context).secondaryHeaderColor,
            labelText: widget.hint,
            suffixIcon: setInputSuffix(widget.inputMode),
          ),
          keyboardType: widget.keyboardType ?? TextInputType.text,
          maxLines: null,
          textInputAction: widget.textInputAction ?? TextInputAction.go,
          onFieldSubmitted: widget.onSubmit,
        ),
      ),
    );
  }

  /// Returns the appropriate input suffix widget based on the current [inputMode]
  IconButton setInputSuffix(InputMode inputMode) {
    return IconButton(
      onPressed: () {
        widget.controller.clear();
        focusNode?.requestFocus();
      },
      icon: Icon(Icons.clear),
    );
  }
}
