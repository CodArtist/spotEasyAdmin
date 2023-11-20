// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/foundation.dart';

import 'package:firebase_storage/firebase_storage.dart';

import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

Future<String> uploadDocToFirebase(FFUploadedFile? docFile) async {
  try {
    if (docFile == null || docFile.bytes == null) {
      throw Exception('Invalid image file');
    }

    Reference storageReference =
        FirebaseStorage.instance.ref('file/').child(docFile.name!);

    if (kIsWeb) {
      // Code specific to web platform
      UploadTask uploadTask = storageReference.putData(docFile.bytes!);
      await uploadTask.whenComplete(() => print('Image uploaded'));
    } else {
      // Code for other platforms (e.g., Android, iOS)
      UploadTask uploadTask =
          storageReference.putFile(File.fromRawPath(docFile.bytes!));
      await uploadTask.whenComplete(() => print('Image uploaded'));
    }

    String downloadURL = await storageReference.getDownloadURL();
    return downloadURL;
  } catch (e) {
    print('Error uploading image: $e');
    return e.toString();
  }
}
