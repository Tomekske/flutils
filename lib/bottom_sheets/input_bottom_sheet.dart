import 'package:flutter/material.dart';
import 'package:utils/enums/input_picker.dart';
import 'package:utils/widgets/widgets.dart';

/// This class shows the bottom sheet content for sharing a recipe
class InputBottomSheet {
  /// Property contains the build [context]
  BuildContext context;

  /// Property contains the bottom sheet's [title]
  String title;

  /// Property contains the input box's [hint] text
  String hint;

  /// The [onClose] callback returns the text that has been entered within the input box
  Function(String? text) onClose;

  InputBottomSheet(
    this.context, {
    required this.title,
    required this.hint,
    required this.onClose,
  });

  /// Display the bottom sheet
  void showBottomSheet() {
    final TextEditingController textController = TextEditingController();
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
                    InputBox(
                      hint: hint,
                      controller: textController,
                      inputPicker: InputPicker.clear,
                      autoFocus: true,
                      onSubmit: (String submittedText) {
                        text = submittedText;

                        // Close the bottom sheet once the user entered the text
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
