import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

bool? checkUploaded(FFUploadedFile? uploadedData) {
  if (uploadedData == null ||
      uploadedData.bytes == null ||
      uploadedData.bytes!.isEmpty) {
    // If any of the conditions are true, return false
    return false;
  } else {
    // If none of the conditions are true, return true
    return true;
  }
}

String? convertDOB(DateTime? dateTime) {
  if (dateTime == null) {
    return "Select Date";
  }
  String d = dateTime.month.toString() +
      "/" +
      dateTime.day.toString() +
      "/" +
      dateTime.year.toString();
  return d;
}
