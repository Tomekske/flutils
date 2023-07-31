import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutils/data/enums/input_mode.dart';

class FluentTextBox extends StatefulWidget {
  /// Property contains the [hint] text of the input box
  final String hint;

  /// Property contains the input [controller] object
  final TextEditingController controller;

  /// Property to set the [inputMode]
  final InputMode inputMode;

  /// Property contains the [selectedDate]
  DateTime? selectedDate;

  /// The [onSubmit] callback contains the input box's text
  Function(String? text)? onSubmit;

  /// A class that provides platform-specific Fluent UI input box widget.
  FluentTextBox({
    required this.hint,
    required this.controller,
    required this.inputMode,
    this.selectedDate,
    this.onSubmit,
  }) : super();

  @override
  _FluentTextBoxState createState() => _FluentTextBoxState();
}

class _FluentTextBoxState extends State<FluentTextBox> {
  FocusNode? focus;

  @override
  void initState() {
    super.initState();
    focus = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: TextBox(
          placeholder: widget.hint,
          focusNode: focus,
          controller: widget.controller,
          suffix: setInputSuffix(widget.inputMode),
          onSubmitted: (value) {
            if (value.isNotEmpty) {
              widget.onSubmit?.call(value);
              widget.controller.clear();
              focus?.requestFocus();
            }
          },
        ),
      ),
    );
  }

  /// Returns the appropriate input suffix widget based on the current [inputMode]
  IconButton setInputSuffix(InputMode inputMode) {
    if (inputMode == InputMode.clear) {
      return IconButton(
        onPressed: () => widget.controller.clear(),
        icon: Icon(
          FluentIcons.clear,
          color: FluentTheme.of(context).iconTheme.color,
        ),
      );
    } else if (inputMode == InputMode.submit) {
      return IconButton(
        onPressed: () {
          widget.onSubmit?.call(widget.controller.text);
          widget.controller.clear();
        },
        icon: Icon(
          FluentIcons.send,
          color: FluentTheme.of(context).iconTheme.color,
        ),
      );
    }

    return IconButton(
      onPressed: () async {
        try {
          final selectedDirectory =
              await FilePicker.platform.getDirectoryPath();
          if (selectedDirectory != null) {
            widget.controller.text = File(selectedDirectory).path;
          }
        } catch (e) {
          print("Unable to open folder dialog => $e");
        }
      },
      icon: Icon(
        FluentIcons.folder_open,
        color: FluentTheme.of(context).iconTheme.color,
      ),
    );
  }
}
