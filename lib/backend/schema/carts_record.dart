import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'carts_record.g.dart';

abstract class CartsRecord implements Built<CartsRecord, CartsRecordBuilder> {
  static Serializer<CartsRecord> get serializer => _$cartsRecordSerializer;

  DocumentReference? get userRef;

  int? get itemsCount;

  bool? get cartActive;

  double? get subTotal;

  BuiltList<DocumentReference>? get cartItems;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CartsRecordBuilder builder) => builder
    ..itemsCount = 0
    ..cartActive = false
    ..subTotal = 0.0
    ..cartItems = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carts');

  static Stream<CartsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CartsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CartsRecord._();
  factory CartsRecord([void Function(CartsRecordBuilder) updates]) =
      _$CartsRecord;

  static CartsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCartsRecordData({
  DocumentReference? userRef,
  int? itemsCount,
  bool? cartActive,
  double? subTotal,
}) {
  final firestoreData = serializers.toFirestore(
    CartsRecord.serializer,
    CartsRecord(
      (c) => c
        ..userRef = userRef
        ..itemsCount = itemsCount
        ..cartActive = cartActive
        ..subTotal = subTotal
        ..cartItems = null,
    ),
  );

  return firestoreData;
}
