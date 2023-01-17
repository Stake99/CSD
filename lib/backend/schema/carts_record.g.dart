// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CartsRecord> _$cartsRecordSerializer = new _$CartsRecordSerializer();

class _$CartsRecordSerializer implements StructuredSerializer<CartsRecord> {
  @override
  final Iterable<Type> types = const [CartsRecord, _$CartsRecord];
  @override
  final String wireName = 'CartsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CartsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.itemsCount;
    if (value != null) {
      result
        ..add('itemsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cartActive;
    if (value != null) {
      result
        ..add('cartActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.subTotal;
    if (value != null) {
      result
        ..add('subTotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.cartItems;
    if (value != null) {
      result
        ..add('cartItems')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  CartsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'itemsCount':
          result.itemsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cartActive':
          result.cartActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'subTotal':
          result.subTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'cartItems':
          result.cartItems.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$CartsRecord extends CartsRecord {
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final int? itemsCount;
  @override
  final bool? cartActive;
  @override
  final double? subTotal;
  @override
  final BuiltList<DocumentReference<Object?>>? cartItems;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CartsRecord([void Function(CartsRecordBuilder)? updates]) =>
      (new CartsRecordBuilder()..update(updates))._build();

  _$CartsRecord._(
      {this.userRef,
      this.itemsCount,
      this.cartActive,
      this.subTotal,
      this.cartItems,
      this.ffRef})
      : super._();

  @override
  CartsRecord rebuild(void Function(CartsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartsRecordBuilder toBuilder() => new CartsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartsRecord &&
        userRef == other.userRef &&
        itemsCount == other.itemsCount &&
        cartActive == other.cartActive &&
        subTotal == other.subTotal &&
        cartItems == other.cartItems &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, userRef.hashCode), itemsCount.hashCode),
                    cartActive.hashCode),
                subTotal.hashCode),
            cartItems.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CartsRecord')
          ..add('userRef', userRef)
          ..add('itemsCount', itemsCount)
          ..add('cartActive', cartActive)
          ..add('subTotal', subTotal)
          ..add('cartItems', cartItems)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CartsRecordBuilder implements Builder<CartsRecord, CartsRecordBuilder> {
  _$CartsRecord? _$v;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  int? _itemsCount;
  int? get itemsCount => _$this._itemsCount;
  set itemsCount(int? itemsCount) => _$this._itemsCount = itemsCount;

  bool? _cartActive;
  bool? get cartActive => _$this._cartActive;
  set cartActive(bool? cartActive) => _$this._cartActive = cartActive;

  double? _subTotal;
  double? get subTotal => _$this._subTotal;
  set subTotal(double? subTotal) => _$this._subTotal = subTotal;

  ListBuilder<DocumentReference<Object?>>? _cartItems;
  ListBuilder<DocumentReference<Object?>> get cartItems =>
      _$this._cartItems ??= new ListBuilder<DocumentReference<Object?>>();
  set cartItems(ListBuilder<DocumentReference<Object?>>? cartItems) =>
      _$this._cartItems = cartItems;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CartsRecordBuilder() {
    CartsRecord._initializeBuilder(this);
  }

  CartsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userRef = $v.userRef;
      _itemsCount = $v.itemsCount;
      _cartActive = $v.cartActive;
      _subTotal = $v.subTotal;
      _cartItems = $v.cartItems?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartsRecord;
  }

  @override
  void update(void Function(CartsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CartsRecord build() => _build();

  _$CartsRecord _build() {
    _$CartsRecord _$result;
    try {
      _$result = _$v ??
          new _$CartsRecord._(
              userRef: userRef,
              itemsCount: itemsCount,
              cartActive: cartActive,
              subTotal: subTotal,
              cartItems: _cartItems?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cartItems';
        _cartItems?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CartsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
