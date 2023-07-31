import 'package:flutils/enums.dart';
import 'package:flutils/widgets/platform_ui/text_box/material_text_box.dart';
import 'package:flutter/material.dart';

/// This class shows the bottom sheet content for one single inputBox
class InputBottomSheet {
  /// Property contains the build [context]
  BuildContext context;

  /// Property contains the bottom sheet's [title]
  String title;

  /// Property contains the input box's [hint] text
  String hint;

  /// Set a [value] within the input box
  String? setValue;

  /// The [onClose] callback returns the text that has been entered within the input box
  Function(String? text) onClose;

  InputBottomSheet(
    this.context, {
    required this.title,
    required this.hint,
    required this.onClose,
    this.setValue,
  });

  /// Display the bottom sheet
  void showBottomSheet() {
    final TextEditingController textController = TextEditingController();

    if (setValue != null) {
      textController.text = setValue!;
    }

    bool isBottomSheepOnTappedOut = true;
    String? text;

    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        builder: (context) {
          return StatefulBuilder(
            builder: (BuildContext context, setState) {
              return Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Icon(Icons.arrow_back),
                      title: Text(title),
                      onTap: () {
                        Navigator.pop(context);

                        isBottomSheepOnTappedOut = false;
                        onClose(text);
                      },
                    ),
                    MaterialTextBox(
                      hint: hint,
                      controller: textController,
                      inputMode: InputMode.clear,
                      autoFocus: true,
                      onSubmit: (String submittedText) {
                        text = submittedText;

                        // Close the bottom sheet once the user entered the text
                        Navigator.pop(context);
                        isBottomSheepOnTappedOut = false;

                        onClose(text);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        }).whenComplete(() {
      if (isBottomSheepOnTappedOut) {
        onClose(text);
      }
    });
  }
}
