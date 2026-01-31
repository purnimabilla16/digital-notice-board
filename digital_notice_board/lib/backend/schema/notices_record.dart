import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NoticesRecord extends FirestoreRecord {
  NoticesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "target_role" field.
  String? _targetRole;
  String get targetRole => _targetRole ?? '';
  bool hasTargetRole() => _targetRole != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "college_id" field.
  DocumentReference? _collegeId;
  DocumentReference? get collegeId => _collegeId;
  bool hasCollegeId() => _collegeId != null;

  void _initializeFields() {
    _category = snapshotData['category'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _createdBy = snapshotData['created_by'] as String?;
    _description = snapshotData['description'] as String?;
    _isActive = snapshotData['is_active'] as bool?;
    _targetRole = snapshotData['target_role'] as String?;
    _title = snapshotData['title'] as String?;
    _collegeId = snapshotData['college_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notices');

  static Stream<NoticesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NoticesRecord.fromSnapshot(s));

  static Future<NoticesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NoticesRecord.fromSnapshot(s));

  static NoticesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NoticesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NoticesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NoticesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NoticesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NoticesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNoticesRecordData({
  String? category,
  DateTime? createdAt,
  String? createdBy,
  String? description,
  bool? isActive,
  String? targetRole,
  String? title,
  DocumentReference? collegeId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'category': category,
      'created_at': createdAt,
      'created_by': createdBy,
      'description': description,
      'is_active': isActive,
      'target_role': targetRole,
      'title': title,
      'college_id': collegeId,
    }.withoutNulls,
  );

  return firestoreData;
}

class NoticesRecordDocumentEquality implements Equality<NoticesRecord> {
  const NoticesRecordDocumentEquality();

  @override
  bool equals(NoticesRecord? e1, NoticesRecord? e2) {
    return e1?.category == e2?.category &&
        e1?.createdAt == e2?.createdAt &&
        e1?.createdBy == e2?.createdBy &&
        e1?.description == e2?.description &&
        e1?.isActive == e2?.isActive &&
        e1?.targetRole == e2?.targetRole &&
        e1?.title == e2?.title &&
        e1?.collegeId == e2?.collegeId;
  }

  @override
  int hash(NoticesRecord? e) => const ListEquality().hash([
        e?.category,
        e?.createdAt,
        e?.createdBy,
        e?.description,
        e?.isActive,
        e?.targetRole,
        e?.title,
        e?.collegeId
      ]);

  @override
  bool isValidKey(Object? o) => o is NoticesRecord;
}
