import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CollegesRecord extends FirestoreRecord {
  CollegesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _code = snapshotData['code'] as String?;
    _isActive = snapshotData['is_active'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('colleges');

  static Stream<CollegesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CollegesRecord.fromSnapshot(s));

  static Future<CollegesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CollegesRecord.fromSnapshot(s));

  static CollegesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CollegesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CollegesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CollegesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CollegesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CollegesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCollegesRecordData({
  String? name,
  String? code,
  bool? isActive,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'code': code,
      'is_active': isActive,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class CollegesRecordDocumentEquality implements Equality<CollegesRecord> {
  const CollegesRecordDocumentEquality();

  @override
  bool equals(CollegesRecord? e1, CollegesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.code == e2?.code &&
        e1?.isActive == e2?.isActive &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(CollegesRecord? e) =>
      const ListEquality().hash([e?.name, e?.code, e?.isActive, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is CollegesRecord;
}
