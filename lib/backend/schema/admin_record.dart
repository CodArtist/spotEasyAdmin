import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class AdminRecord extends FirestoreRecord {
  AdminRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "last_login" field.
  DateTime? _lastLogin;
  DateTime? get lastLogin => _lastLogin;
  bool hasLastLogin() => _lastLogin != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "UserType" field.
  String? _userType;
  String get userType => _userType ?? '';
  bool hasUserType() => _userType != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "document" field.
  String? _document;
  String get document => _document ?? '';
  bool hasDocument() => _document != null;

  // "isdeleted" field.
  bool? _isdeleted;
  bool get isdeleted => _isdeleted ?? false;
  bool hasIsdeleted() => _isdeleted != null;

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
    _lastLogin = snapshotData['last_login'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userType = snapshotData['UserType'] as String?;
    _password = snapshotData['password'] as String?;
    _status = snapshotData['status'] as String?;
    _document = snapshotData['document'] as String?;
    _isdeleted = snapshotData['isdeleted'] as bool?;
    _altPhoneNumber = snapshotData['Alt_phone_number'] as String?;
    _address = snapshotData['Address'] as String?;
    _country = snapshotData['Country'] as String?;
    _city = snapshotData['City'] as String?;
    _postalCode = snapshotData['Postal_Code'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('admin');

  static Stream<AdminRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminRecord.fromSnapshot(s));

  static Future<AdminRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdminRecord.fromSnapshot(s));

  static AdminRecord fromSnapshot(DocumentSnapshot snapshot) => AdminRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminRecordData({
  String? username,
  DateTime? lastLogin,
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? userType,
  String? password,
  String? status,
  String? document,
  bool? isdeleted,
  String? altPhoneNumber,
  String? address,
  String? country,
  String? city,
  String? postalCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'username': username,
      'last_login': lastLogin,
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'UserType': userType,
      'password': password,
      'status': status,
      'document': document,
      'isdeleted': isdeleted,
      'Alt_phone_number': altPhoneNumber,
      'Address': address,
      'Country': country,
      'City': city,
      'Postal_Code': postalCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminRecordDocumentEquality implements Equality<AdminRecord> {
  const AdminRecordDocumentEquality();

  @override
  bool equals(AdminRecord? e1, AdminRecord? e2) {
    return e1?.username == e2?.username &&
        e1?.lastLogin == e2?.lastLogin &&
        e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userType == e2?.userType &&
        e1?.password == e2?.password &&
        e1?.status == e2?.status &&
        e1?.document == e2?.document &&
        e1?.isdeleted == e2?.isdeleted &&
        e1?.altPhoneNumber == e2?.altPhoneNumber &&
        e1?.address == e2?.address &&
        e1?.country == e2?.country &&
        e1?.city == e2?.city &&
        e1?.postalCode == e2?.postalCode;
  }

  @override
  int hash(AdminRecord? e) => const ListEquality().hash([
        e?.username,
        e?.lastLogin,
        e?.email,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.userType,
        e?.password,
        e?.status,
        e?.document,
        e?.isdeleted,
        e?.altPhoneNumber,
        e?.address,
        e?.country,
        e?.city,
        e?.postalCode
      ]);

  @override
  bool isValidKey(Object? o) => o is AdminRecord;
}
