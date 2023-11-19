import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendEmailAdminCall {
  static Future<ApiCallResponse> call({
    String? username = 'Harsh Jain',
    String? password = 'Harsh2001*',
    String? toName = 'Harsh',
    String? userType = 'Admin',
    String? toEmail = 'harshabcd9@gmail.com',
    String? replyTo = 'jainh7038@gmail.com',
  }) async {
    final ffApiRequestBody = '''
{
  "service_id": "service_gbrginq",
  "template_id": "template_3dx2oug",
  "user_id": "Od-80p26sB51a5i9J",
  "template_params": {
    "username": "$username",
    "to_email": "$toEmail",
    "password": "$password",
    "user_type": "$userType",
    "reply_to": "$replyTo",
    "to_name": "$toName"
  },
  "access_token": "QlgaQVOd-afSeBRJMBCg2"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendEmailAdmin',
      apiUrl: 'https://api.emailjs.com/api/v1.0/email/send',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'origin': 'http://localhost',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
