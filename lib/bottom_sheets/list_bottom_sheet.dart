import 'package:flutter/material.dart';

/// This class shows a list of widgets within the bottom sheet
class ListBottomSheet {
  /// Property contains the build [context]
  BuildContext context;

  /// Property contains the bottom sheet's [title]
  String title;

  /// Property contains the [widgetList] which is displayed on the bottom sheet
  List<Widget> widgetList;

  ListBottomSheet(
    this.context, {
    required this.title,
    required this.widgetList,
  });

  /// Display the bottom sheet
  void showBottomSheet() => showModalBottomSheet(
      context: context,
      isScrollControlled: false,
      isDismissible: true,
      enableDrag: true,
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
                    },
                  ),
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: widgetList,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      });
}
