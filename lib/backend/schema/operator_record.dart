import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

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

  // "isdeleted" field.
  bool? _isdeleted;
  bool get isdeleted => _isdeleted ?? false;
  bool hasIsdeleted() => _isdeleted != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Alt_phone_number" field.
  String? _altPhoneNumber;
  String get altPhoneNumber => _altPhoneNumber ?? '';
  bool hasAltPhoneNumber() => _altPhoneNumber != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "Country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "Postal_Code" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  bool hasPostalCode() => _postalCode != null;

  void _initializeFields() {
    _username = snapshotData['username'] as String?;
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _location = snapshotData['location'] as String?;
    _dob = snapshotData['dob'] as DateTime?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _status = snapshotData['status'] as String?;
    _isdeleted = snapshotData['isdeleted'] as bool?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _altPhoneNumber = snapshotData['Alt_phone_number'] as String?;
    _address = snapshotData['Address'] as String?;
    _country = snapshotData['Country'] as String?;
    _city = snapshotData['City'] as String?;
    _postalCode = snapshotData['Postal_Code'] as String?;
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
  bool? isdeleted,
  String? phoneNumber,
  String? altPhoneNumber,
  String? address,
  String? country,
  String? city,
  String? postalCode,
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
      'isdeleted': isdeleted,
      'phone_number': phoneNumber,
      'Alt_phone_number': altPhoneNumber,
      'Address': address,
      'Country': country,
      'City': city,
      'Postal_Code': postalCode,
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
        e1?.status == e2?.status &&
        e1?.isdeleted == e2?.isdeleted &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.altPhoneNumber == e2?.altPhoneNumber &&
        e1?.address == e2?.address &&
        e1?.country == e2?.country &&
        e1?.city == e2?.city &&
        e1?.postalCode == e2?.postalCode;
  }

  @override
  int hash(OperatorRecord? e) => const ListEquality().hash([
        e?.username,
        e?.email,
        e?.password,
        e?.location,
        e?.dob,
        e?.photoUrl,
        e?.status,
        e?.isdeleted,
        e?.phoneNumber,
        e?.altPhoneNumber,
        e?.address,
        e?.country,
        e?.city,
        e?.postalCode
      ]);

  @override
  bool isValidKey(Object? o) => o is OperatorRecord;
}
