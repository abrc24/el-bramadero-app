import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SliderRecord extends FirestoreRecord {
  SliderRecord._(
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

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  void _initializeFields() {
    _order = castToType<int>(snapshotData['order']);
    _active = snapshotData['active'] as bool?;
    _url = snapshotData['url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('slider');

  static Stream<SliderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SliderRecord.fromSnapshot(s));

  static Future<SliderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SliderRecord.fromSnapshot(s));

  static SliderRecord fromSnapshot(DocumentSnapshot snapshot) => SliderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SliderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SliderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SliderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SliderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSliderRecordData({
  int? order,
  bool? active,
  String? url,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'order': order,
      'active': active,
      'url': url,
    }.withoutNulls,
  );

  return firestoreData;
}

class SliderRecordDocumentEquality implements Equality<SliderRecord> {
  const SliderRecordDocumentEquality();

  @override
  bool equals(SliderRecord? e1, SliderRecord? e2) {
    return e1?.order == e2?.order &&
        e1?.active == e2?.active &&
        e1?.url == e2?.url;
  }

  @override
  int hash(SliderRecord? e) =>
      const ListEquality().hash([e?.order, e?.active, e?.url]);

  @override
  bool isValidKey(Object? o) => o is SliderRecord;
}
