// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_details_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemDetailsRecord> _$itemDetailsRecordSerializer =
    new _$ItemDetailsRecordSerializer();

class _$ItemDetailsRecordSerializer
    implements StructuredSerializer<ItemDetailsRecord> {
  @override
  final Iterable<Type> types = const [ItemDetailsRecord, _$ItemDetailsRecord];
  @override
  final String wireName = 'ItemDetailsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ItemDetailsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.specifications;
    if (value != null) {
      result
        ..add('specifications')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cartRef;
    if (value != null) {
      result
        ..add('cartRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.menuitemRef;
    if (value != null) {
      result
        ..add('menuitemRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.modifiers;
    if (value != null) {
      result
        ..add('modifiers')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.modifiers1;
    if (value != null) {
      result
        ..add('modifiers_1')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.menuitemPhoto;
    if (value != null) {
      result
        ..add('menuitemPhoto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ItemDetailsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemDetailsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'specifications':
          result.specifications = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cartRef':
          result.cartRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'menuitemRef':
          result.menuitemRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'modifiers':
          result.modifiers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'modifiers_1':
          result.modifiers1.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'menuitemPhoto':
          result.menuitemPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ItemDetailsRecord extends ItemDetailsRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? specifications;
  @override
  final double? price;
  @override
  final int? quantity;
  @override
  final DocumentReference<Object?>? cartRef;
  @override
  final DocumentReference<Object?>? menuitemRef;
  @override
  final BuiltList<String>? modifiers;
  @override
  final BuiltList<String>? modifiers1;
  @override
  final String? menuitemPhoto;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ItemDetailsRecord(
          [void Function(ItemDetailsRecordBuilder)? updates]) =>
      (new ItemDetailsRecordBuilder()..update(updates))._build();

  _$ItemDetailsRecord._(
      {this.name,
      this.description,
      this.specifications,
      this.price,
      this.quantity,
      this.cartRef,
      this.menuitemRef,
      this.modifiers,
      this.modifiers1,
      this.menuitemPhoto,
      this.ffRef})
      : super._();

  @override
  ItemDetailsRecord rebuild(void Function(ItemDetailsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemDetailsRecordBuilder toBuilder() =>
      new ItemDetailsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemDetailsRecord &&
        name == other.name &&
        description == other.description &&
        specifications == other.specifications &&
        price == other.price &&
        quantity == other.quantity &&
        cartRef == other.cartRef &&
        menuitemRef == other.menuitemRef &&
        modifiers == other.modifiers &&
        modifiers1 == other.modifiers1 &&
        menuitemPhoto == other.menuitemPhoto &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, name.hashCode),
                                            description.hashCode),
                                        specifications.hashCode),
                                    price.hashCode),
                                quantity.hashCode),
                            cartRef.hashCode),
                        menuitemRef.hashCode),
                    modifiers.hashCode),
                modifiers1.hashCode),
            menuitemPhoto.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemDetailsRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('specifications', specifications)
          ..add('price', price)
          ..add('quantity', quantity)
          ..add('cartRef', cartRef)
          ..add('menuitemRef', menuitemRef)
          ..add('modifiers', modifiers)
          ..add('modifiers1', modifiers1)
          ..add('menuitemPhoto', menuitemPhoto)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ItemDetailsRecordBuilder
    implements Builder<ItemDetailsRecord, ItemDetailsRecordBuilder> {
  _$ItemDetailsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _specifications;
  String? get specifications => _$this._specifications;
  set specifications(String? specifications) =>
      _$this._specifications = specifications;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  DocumentReference<Object?>? _cartRef;
  DocumentReference<Object?>? get cartRef => _$this._cartRef;
  set cartRef(DocumentReference<Object?>? cartRef) => _$this._cartRef = cartRef;

  DocumentReference<Object?>? _menuitemRef;
  DocumentReference<Object?>? get menuitemRef => _$this._menuitemRef;
  set menuitemRef(DocumentReference<Object?>? menuitemRef) =>
      _$this._menuitemRef = menuitemRef;

  ListBuilder<String>? _modifiers;
  ListBuilder<String> get modifiers =>
      _$this._modifiers ??= new ListBuilder<String>();
  set modifiers(ListBuilder<String>? modifiers) =>
      _$this._modifiers = modifiers;

  ListBuilder<String>? _modifiers1;
  ListBuilder<String> get modifiers1 =>
      _$this._modifiers1 ??= new ListBuilder<String>();
  set modifiers1(ListBuilder<String>? modifiers1) =>
      _$this._modifiers1 = modifiers1;

  String? _menuitemPhoto;
  String? get menuitemPhoto => _$this._menuitemPhoto;
  set menuitemPhoto(String? menuitemPhoto) =>
      _$this._menuitemPhoto = menuitemPhoto;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ItemDetailsRecordBuilder() {
    ItemDetailsRecord._initializeBuilder(this);
  }

  ItemDetailsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _specifications = $v.specifications;
      _price = $v.price;
      _quantity = $v.quantity;
      _cartRef = $v.cartRef;
      _menuitemRef = $v.menuitemRef;
      _modifiers = $v.modifiers?.toBuilder();
      _modifiers1 = $v.modifiers1?.toBuilder();
      _menuitemPhoto = $v.menuitemPhoto;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemDetailsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemDetailsRecord;
  }

  @override
  void update(void Function(ItemDetailsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemDetailsRecord build() => _build();

  _$ItemDetailsRecord _build() {
    _$ItemDetailsRecord _$result;
    try {
      _$result = _$v ??
          new _$ItemDetailsRecord._(
              name: name,
              description: description,
              specifications: specifications,
              price: price,
              quantity: quantity,
              cartRef: cartRef,
              menuitemRef: menuitemRef,
              modifiers: _modifiers?.build(),
              modifiers1: _modifiers1?.build(),
              menuitemPhoto: menuitemPhoto,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'modifiers';
        _modifiers?.build();
        _$failedField = 'modifiers1';
        _modifiers1?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ItemDetailsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
