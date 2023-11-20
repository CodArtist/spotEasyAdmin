// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CityStruct extends FFFirebaseStruct {
  CityStruct({
    String? country,
    String? city,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _country = country,
        _city = city,
        super(firestoreUtilData);

  // "Country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  static CityStruct fromMap(Map<String, dynamic> data) => CityStruct(
        country: data['Country'] as String?,
        city: data['city'] as String?,
      );

  static CityStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CityStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Country': _country,
        'city': _city,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Country': serializeParam(
          _country,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
      }.withoutNulls;

  static CityStruct fromSerializableMap(Map<String, dynamic> data) =>
      CityStruct(
        country: deserializeParam(
          data['Country'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CityStruct &&
        country == other.country &&
        city == other.city;
  }

  @override
  int get hashCode => const ListEquality().hash([country, city]);
}

CityStruct createCityStruct({
  String? country,
  String? city,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CityStruct(
      country: country,
      city: city,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CityStruct? updateCityStruct(
  CityStruct? cityStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cityStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCityStructData(
  Map<String, dynamic> firestoreData,
  CityStruct? cityStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cityStruct == null) {
    return;
  }
  if (cityStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cityStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cityStructData = getCityFirestoreData(cityStruct, forFieldValue);
  final nestedData = cityStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cityStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCityFirestoreData(
  CityStruct? cityStruct, [
  bool forFieldValue = false,
]) {
  if (cityStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cityStruct.toMap());

  // Add any Firestore field values
  cityStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCityListFirestoreData(
  List<CityStruct>? cityStructs,
) =>
    cityStructs?.map((e) => getCityFirestoreData(e, true)).toList() ?? [];
