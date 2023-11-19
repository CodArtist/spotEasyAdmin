// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// import '../../backend/firebase_storage/storage.dart';
import '../../flutter_flow/flutter_flow_widgets.dart';
import '../../flutter_flow/upload_data.dart';

Future<FFUploadedFile> uploadAnyFileType() async {
  // Add your function code here!

  final selectedFile = await selectFile(
      allowedExtensions: ['pdf', 'png', 'jpg', 'jpeg', 'xlxs']);
  FFUploadedFile f = await FFUploadedFile(
      bytes: selectedFile!.bytes, name: selectedFile.storagePath.split('/')[3]);
  return f;
}
