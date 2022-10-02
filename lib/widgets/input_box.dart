import 'package:flutter/material.dart';
import 'package:utils/enums/input_picker.dart';

/// Input widget with a clear button
class InputBox extends StatefulWidget {
  /// Property contains a [key]
  Key? key;

  /// Property contains the [hint] text of the input box
  final String hint;

  /// Property contains the input [controller] object
  final TextEditingController controller;

  /// Property to set the input mode
  final InputPicker inputPicker;

  /// Property sets the [keyboardType] such as: text, phone, multiline, passwords, ...
  /// Note that the input box behaves accordingly chosen [keyboardType]
  TextInputType? keyboardType;

  /// Property sets the [textInputAction] button of the soft keyboard such as: done, go, search, ...
  /// Note that the visual representation doesn't cause any specific behavior
  TextInputAction? textInputAction;

  /// [autoFocus] determines wether an input box is auto focused
  bool? autoFocus;

  /// The [onSubmit] callback returns the text of given text input
  Function(String text)? onSubmit;

  /// Input widget with a clear button
  InputBox({
    this.key,
    required this.hint,
    required this.controller,
    required this.inputPicker,
    this.keyboardType,
    this.textInputAction,
    this.autoFocus,
    this.onSubmit,
  }) : super();

  @override
  _InputBoxState createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
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
            suffixIcon: setInputSuffix(widget.inputPicker),
          ),
          keyboardType: widget.keyboardType ?? TextInputType.text,
          maxLines: null,
          textInputAction: widget.textInputAction ?? TextInputAction.go,
          onFieldSubmitted: widget.onSubmit,
        ),
      ),
    );
  }

  /// Set the correct input suffix on a given [inputPicker]
  IconButton setInputSuffix(InputPicker inputPicker) {
    return IconButton(
      onPressed: () {
        widget.controller.clear();
        focusNode?.requestFocus();
      },
      icon: Icon(Icons.clear),
    );
  }
}
