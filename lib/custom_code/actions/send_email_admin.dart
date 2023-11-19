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

import 'package:emailjs/emailjs.dart';

Future<bool> sendEmailAdmin(
  String username,
  String password,
  String toname,
  String toemail,
  String replyto,
  String usertype,
  String isAdmin,
) async {
  // Add your function code here!
  Map<String, dynamic> templateParams = {
    "username": username,
    "to_email": toemail.toLowerCase(),
    "user_type": usertype,
    "reply_to": replyto,
    "to_name": toname,
    "isAdmin": isAdmin
  };

  // try {
  //   await EmailJS.send(
  //     'service_gbrginq',
  //     'template_3dx2oug',
  //     templateParams,
  //     const Options(
  //       publicKey: 'Od-80p26sB51a5i9J',
  //       privateKey: 'QlgaQVOd-afSeBRJMBCg2',
  //     ),
  //   );
  //   return true;
  // } catch (error) {
  //   return false;
  // }

  EmailJS.init(const Options(
    publicKey: 'Od-80p26sB51a5i9J',
    privateKey: 'QlgaQVOd-afSeBRJMBCg2',
  ));

  try {
    // send the email without dynamic variables
    await EmailJS.send('service_gbrginq', 'template_3dx2oug', templateParams);
    return true;
  } catch (error) {
    return false;
  }
}
