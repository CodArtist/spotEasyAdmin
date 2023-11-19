// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

class ImageFromBytes extends StatefulWidget {
  const ImageFromBytes({
    Key? key,
    this.width,
    this.height,
    this.image,
  }) : super(key: key);
  final double? width;
  final double? height;
  final FFUploadedFile? image;
  @override
  _ImageFromBytesState createState() => _ImageFromBytesState();
}

class _ImageFromBytesState extends State<ImageFromBytes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: widget.image != null
          ? Image.memory(widget.image!.bytes!)
          : Image.network(
              "https://cdn.landesa.org/wp-content/uploads/default-user-image.png"),
    );
  }
}
