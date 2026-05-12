import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BannerRecord extends FirestoreRecord {
  BannerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "url_b2" field.
  String? _urlB2;
  String get urlB2 => _urlB2 ?? '';
  bool hasUrlB2() => _urlB2 != null;

  void _initializeFields() {
    _order = castToType<int>(snapshotData['order']);
    _active = snapshotData['active'] as bool?;
    _urlB2 = snapshotData['url_b2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('banner');

  static Stream<BannerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BannerRecord.fromSnapshot(s));

  static Future<BannerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BannerRecord.fromSnapshot(s));

  static BannerRecord fromSnapshot(DocumentSnapshot snapshot) => BannerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BannerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BannerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BannerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BannerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBannerRecordData({
  int? order,
  bool? active,
  String? urlB2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'order': order,
      'active': active,
      'url_b2': urlB2,
    }.withoutNulls,
  );

  return firestoreData;
}

class BannerRecordDocumentEquality implements Equality<BannerRecord> {
  const BannerRecordDocumentEquality();

  @override
  bool equals(BannerRecord? e1, BannerRecord? e2) {
    return e1?.order == e2?.order &&
        e1?.active == e2?.active &&
        e1?.urlB2 == e2?.urlB2;
  }

  @override
  int hash(BannerRecord? e) =>
      const ListEquality().hash([e?.order, e?.active, e?.urlB2]);

  @override
  bool isValidKey(Object? o) => o is BannerRecord;
}
