import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'menu_items_record.g.dart';

abstract class MenuItemsRecord
    implements Built<MenuItemsRecord, MenuItemsRecordBuilder> {
  static Serializer<MenuItemsRecord> get serializer =>
      _$menuItemsRecordSerializer;

  String? get name;

  String? get description;

  String? get specifications;

  int? get price;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'modified_at')
  DateTime? get modifiedAt;

  @BuiltValueField(wireName: 'on_sale')
  bool? get onSale;

  @BuiltValueField(wireName: 'sale_price')
  double? get salePrice;

  int? get quantity;

  BuiltList<String>? get modifiers;

  @BuiltValueField(wireName: 'modifiers_2')
  BuiltList<String>? get modifiers2;

  String? get photoProduct;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MenuItemsRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..specifications = ''
    ..price = 0
    ..onSale = false
    ..salePrice = 0.0
    ..quantity = 0
    ..modifiers = ListBuilder()
    ..modifiers2 = ListBuilder()
    ..photoProduct = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menuItems');

  static Stream<MenuItemsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MenuItemsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MenuItemsRecord._();
  factory MenuItemsRecord([void Function(MenuItemsRecordBuilder) updates]) =
      _$MenuItemsRecord;

  static MenuItemsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMenuItemsRecordData({
  String? name,
  String? description,
  String? specifications,
  int? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? onSale,
  double? salePrice,
  int? quantity,
  String? photoProduct,
}) {
  final firestoreData = serializers.toFirestore(
    MenuItemsRecord.serializer,
    MenuItemsRecord(
      (m) => m
        ..name = name
        ..description = description
        ..specifications = specifications
        ..price = price
        ..createdAt = createdAt
        ..modifiedAt = modifiedAt
        ..onSale = onSale
        ..salePrice = salePrice
        ..quantity = quantity
        ..modifiers = null
        ..modifiers2 = null
        ..photoProduct = photoProduct,
    ),
  );

  return firestoreData;
}
