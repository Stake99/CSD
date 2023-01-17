// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_items_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MenuItemsRecord> _$menuItemsRecordSerializer =
    new _$MenuItemsRecordSerializer();

class _$MenuItemsRecordSerializer
    implements StructuredSerializer<MenuItemsRecord> {
  @override
  final Iterable<Type> types = const [MenuItemsRecord, _$MenuItemsRecord];
  @override
  final String wireName = 'MenuItemsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MenuItemsRecord object,
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
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modified_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.onSale;
    if (value != null) {
      result
        ..add('on_sale')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.salePrice;
    if (value != null) {
      result
        ..add('sale_price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.modifiers;
    if (value != null) {
      result
        ..add('modifiers')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.modifiers2;
    if (value != null) {
      result
        ..add('modifiers_2')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.photoProduct;
    if (value != null) {
      result
        ..add('photoProduct')
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
  MenuItemsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MenuItemsRecordBuilder();

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
              specifiedType: const FullType(int)) as int?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'modified_at':
          result.modifiedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'on_sale':
          result.onSale = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'sale_price':
          result.salePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'modifiers':
          result.modifiers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'modifiers_2':
          result.modifiers2.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'photoProduct':
          result.photoProduct = serializers.deserialize(value,
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

class _$MenuItemsRecord extends MenuItemsRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? specifications;
  @override
  final int? price;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? modifiedAt;
  @override
  final bool? onSale;
  @override
  final double? salePrice;
  @override
  final int? quantity;
  @override
  final BuiltList<String>? modifiers;
  @override
  final BuiltList<String>? modifiers2;
  @override
  final String? photoProduct;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MenuItemsRecord([void Function(MenuItemsRecordBuilder)? updates]) =>
      (new MenuItemsRecordBuilder()..update(updates))._build();

  _$MenuItemsRecord._(
      {this.name,
      this.description,
      this.specifications,
      this.price,
      this.createdAt,
      this.modifiedAt,
      this.onSale,
      this.salePrice,
      this.quantity,
      this.modifiers,
      this.modifiers2,
      this.photoProduct,
      this.ffRef})
      : super._();

  @override
  MenuItemsRecord rebuild(void Function(MenuItemsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuItemsRecordBuilder toBuilder() =>
      new MenuItemsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuItemsRecord &&
        name == other.name &&
        description == other.description &&
        specifications == other.specifications &&
        price == other.price &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        onSale == other.onSale &&
        salePrice == other.salePrice &&
        quantity == other.quantity &&
        modifiers == other.modifiers &&
        modifiers2 == other.modifiers2 &&
        photoProduct == other.photoProduct &&
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
                                        $jc(
                                            $jc(
                                                $jc($jc(0, name.hashCode),
                                                    description.hashCode),
                                                specifications.hashCode),
                                            price.hashCode),
                                        createdAt.hashCode),
                                    modifiedAt.hashCode),
                                onSale.hashCode),
                            salePrice.hashCode),
                        quantity.hashCode),
                    modifiers.hashCode),
                modifiers2.hashCode),
            photoProduct.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MenuItemsRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('specifications', specifications)
          ..add('price', price)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('onSale', onSale)
          ..add('salePrice', salePrice)
          ..add('quantity', quantity)
          ..add('modifiers', modifiers)
          ..add('modifiers2', modifiers2)
          ..add('photoProduct', photoProduct)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MenuItemsRecordBuilder
    implements Builder<MenuItemsRecord, MenuItemsRecordBuilder> {
  _$MenuItemsRecord? _$v;

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

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(DateTime? modifiedAt) => _$this._modifiedAt = modifiedAt;

  bool? _onSale;
  bool? get onSale => _$this._onSale;
  set onSale(bool? onSale) => _$this._onSale = onSale;

  double? _salePrice;
  double? get salePrice => _$this._salePrice;
  set salePrice(double? salePrice) => _$this._salePrice = salePrice;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  ListBuilder<String>? _modifiers;
  ListBuilder<String> get modifiers =>
      _$this._modifiers ??= new ListBuilder<String>();
  set modifiers(ListBuilder<String>? modifiers) =>
      _$this._modifiers = modifiers;

  ListBuilder<String>? _modifiers2;
  ListBuilder<String> get modifiers2 =>
      _$this._modifiers2 ??= new ListBuilder<String>();
  set modifiers2(ListBuilder<String>? modifiers2) =>
      _$this._modifiers2 = modifiers2;

  String? _photoProduct;
  String? get photoProduct => _$this._photoProduct;
  set photoProduct(String? photoProduct) => _$this._photoProduct = photoProduct;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MenuItemsRecordBuilder() {
    MenuItemsRecord._initializeBuilder(this);
  }

  MenuItemsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _specifications = $v.specifications;
      _price = $v.price;
      _createdAt = $v.createdAt;
      _modifiedAt = $v.modifiedAt;
      _onSale = $v.onSale;
      _salePrice = $v.salePrice;
      _quantity = $v.quantity;
      _modifiers = $v.modifiers?.toBuilder();
      _modifiers2 = $v.modifiers2?.toBuilder();
      _photoProduct = $v.photoProduct;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuItemsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenuItemsRecord;
  }

  @override
  void update(void Function(MenuItemsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MenuItemsRecord build() => _build();

  _$MenuItemsRecord _build() {
    _$MenuItemsRecord _$result;
    try {
      _$result = _$v ??
          new _$MenuItemsRecord._(
              name: name,
              description: description,
              specifications: specifications,
              price: price,
              createdAt: createdAt,
              modifiedAt: modifiedAt,
              onSale: onSale,
              salePrice: salePrice,
              quantity: quantity,
              modifiers: _modifiers?.build(),
              modifiers2: _modifiers2?.build(),
              photoProduct: photoProduct,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'modifiers';
        _modifiers?.build();
        _$failedField = 'modifiers2';
        _modifiers2?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MenuItemsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
