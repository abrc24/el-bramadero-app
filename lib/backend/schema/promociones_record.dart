import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// promociones del año
class PromocionesRecord extends FirestoreRecord {
  PromocionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "fecha_inicio" field.
  DateTime? _fechaInicio;
  DateTime? get fechaInicio => _fechaInicio;
  bool hasFechaInicio() => _fechaInicio != null;

  // "fecha_caducidad" field.
  DateTime? _fechaCaducidad;
  DateTime? get fechaCaducidad => _fechaCaducidad;
  bool hasFechaCaducidad() => _fechaCaducidad != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _fechaInicio = snapshotData['fecha_inicio'] as DateTime?;
    _fechaCaducidad = snapshotData['fecha_caducidad'] as DateTime?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('promociones');

  static Stream<PromocionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromocionesRecord.fromSnapshot(s));

  static Future<PromocionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromocionesRecord.fromSnapshot(s));

  static PromocionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PromocionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromocionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromocionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromocionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromocionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromocionesRecordData({
  String? nombre,
  String? descripcion,
  DateTime? fechaInicio,
  DateTime? fechaCaducidad,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'fecha_inicio': fechaInicio,
      'fecha_caducidad': fechaCaducidad,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromocionesRecordDocumentEquality implements Equality<PromocionesRecord> {
  const PromocionesRecordDocumentEquality();

  @override
  bool equals(PromocionesRecord? e1, PromocionesRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fechaInicio == e2?.fechaInicio &&
        e1?.fechaCaducidad == e2?.fechaCaducidad &&
        e1?.image == e2?.image;
  }

  @override
  int hash(PromocionesRecord? e) => const ListEquality().hash(
      [e?.nombre, e?.descripcion, e?.fechaInicio, e?.fechaCaducidad, e?.image]);

  @override
  bool isValidKey(Object? o) => o is PromocionesRecord;
}
