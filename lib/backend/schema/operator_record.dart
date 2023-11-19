import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class OperatorRecord extends FirestoreRecord {
  OperatorRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "dob" field.
  DateTime? _dob;
  DateTime? get dob => _dob;
  bool hasDob() => _dob != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _username = snapshotData['username'] as String?;
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _location = snapshotData['location'] as String?;
    _dob = snapshotData['dob'] as DateTime?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('operator');

  static Stream<OperatorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OperatorRecord.fromSnapshot(s));

  static Future<OperatorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OperatorRecord.fromSnapshot(s));

  static OperatorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OperatorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OperatorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OperatorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OperatorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OperatorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOperatorRecordData({
  String? username,
  String? email,
  String? password,
  String? location,
  DateTime? dob,
  String? photoUrl,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'username': username,
      'email': email,
      'password': password,
      'location': location,
      'dob': dob,
      'photo_url': photoUrl,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class OperatorRecordDocumentEquality implements Equality<OperatorRecord> {
  const OperatorRecordDocumentEquality();

  @override
  bool equals(OperatorRecord? e1, OperatorRecord? e2) {
    return e1?.username == e2?.username &&
        e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.location == e2?.location &&
        e1?.dob == e2?.dob &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.status == e2?.status;
  }

  @override
  int hash(OperatorRecord? e) => const ListEquality().hash([
        e?.username,
        e?.email,
        e?.password,
        e?.location,
        e?.dob,
        e?.photoUrl,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is OperatorRecord;
}
