import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _User = prefs.getString('ff_User')?.ref ?? _User;
    });
    _safeInit(() {
      _loggedin = prefs.getBool('ff_loggedin') ?? _loggedin;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _ss = '';
  String get ss => _ss;
  set ss(String value) {
    _ss = value;
  }

  dynamic _userDetail;
  dynamic get userDetail => _userDetail;
  set userDetail(dynamic value) {
    _userDetail = value;
  }

  String _otp = '';
  String get otp => _otp;
  set otp(String value) {
    _otp = value;
  }

  String _forgetPassEmail = '';
  String get forgetPassEmail => _forgetPassEmail;
  set forgetPassEmail(String value) {
    _forgetPassEmail = value;
  }

  String _fileName = '';
  String get fileName => _fileName;
  set fileName(String value) {
    _fileName = value;
  }

  DocumentReference? _User;
  DocumentReference? get User => _User;
  set User(DocumentReference? value) {
    _User = value;
    value != null
        ? prefs.setString('ff_User', value.path)
        : prefs.remove('ff_User');
  }

  bool _loggedin = false;
  bool get loggedin => _loggedin;
  set loggedin(bool value) {
    _loggedin = value;
    prefs.setBool('ff_loggedin', value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
