import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'item_details_record.g.dart';

abstract class ItemDetailsRecord
    implements Built<ItemDetailsRecord, ItemDetailsRecordBuilder> {
  static Serializer<ItemDetailsRecord> get serializer =>
      _$itemDetailsRecordSerializer;

  String? get name;

  String? get description;

  String? get specifications;

  double? get price;

  int? get quantity;

  DocumentReference? get cartRef;

  DocumentReference? get menuitemRef;

  BuiltList<String>? get modifiers;

  @BuiltValueField(wireName: 'modifiers_1')
  BuiltList<String>? get modifiers1;

  String? get menuitemPhoto;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ItemDetailsRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..specifications = ''
    ..price = 0.0
    ..quantity = 0
    ..modifiers = ListBuilder()
    ..modifiers1 = ListBuilder()
    ..menuitemPhoto = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('itemDetails');

  static Stream<ItemDetailsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ItemDetailsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ItemDetailsRecord._();
  factory ItemDetailsRecord([void Function(ItemDetailsRecordBuilder) updates]) =
      _$ItemDetailsRecord;

  static ItemDetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createItemDetailsRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  int? quantity,
  DocumentReference? cartRef,
  DocumentReference? menuitemRef,
  String? menuitemPhoto,
}) {
  final firestoreData = serializers.toFirestore(
    ItemDetailsRecord.serializer,
    ItemDetailsRecord(
      (i) => i
        ..name = name
        ..description = description
        ..specifications = specifications
        ..price = price
        ..quantity = quantity
        ..cartRef = cartRef
        ..menuitemRef = menuitemRef
        ..modifiers = null
        ..modifiers1 = null
        ..menuitemPhoto = menuitemPhoto,
    ),
  );

  return firestoreData;
}
