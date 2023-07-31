import 'package:flutils/extensions/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// This widget shows a text on a picture and is used within the appBar
class PictureAppBar extends StatelessWidget {
  /// Property contains the [picture] and accepts providers such as NetworkImage, FileImage, MemoryImage, AssetImage and FileImage
  final ImageProvider<Object> picture;

  /// Property contains the [text] which is displayed on the bottom left of the picture
  /// The default value is ''
  String? text;

  /// How to [fit] the image into the space allocated during layout within
  /// The default value is BoxFit.cover
  BoxFit? boxFit;

  /// How to [fit] the non-positioned children in the stack.
  /// The default value is StackFit.expand
  StackFit? stackFit;

  PictureAppBar({
    required this.picture,
    this.text,
    this.boxFit,
    this.stackFit,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return text != null
        ? Stack(
            fit: StackFit.expand,
            children: [
              Image(
                image: picture,
                fit: boxFit ?? BoxFit.cover,
              ),
              Positioned(
                bottom: 15,
                left: 15,
                child: Text(
                  text ?? StringExtension.empty(),
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.25,
                  ),
                ),
              ),
            ],
          )
        : Image(
            image: picture,
            fit: boxFit ?? BoxFit.cover,
          );
  }
}
