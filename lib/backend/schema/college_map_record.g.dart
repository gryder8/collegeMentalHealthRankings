// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'college_map_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CollegeMapRecord> _$collegeMapRecordSerializer =
    new _$CollegeMapRecordSerializer();

class _$CollegeMapRecordSerializer
    implements StructuredSerializer<CollegeMapRecord> {
  @override
  final Iterable<Type> types = const [CollegeMapRecord, _$CollegeMapRecord];
  @override
  final String wireName = 'CollegeMapRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CollegeMapRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.collegeName;
    if (value != null) {
      result
        ..add('collegeName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.collegeID;
    if (value != null) {
      result
        ..add('collegeID')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  CollegeMapRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollegeMapRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'collegeName':
          result.collegeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'collegeID':
          result.collegeID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$CollegeMapRecord extends CollegeMapRecord {
  @override
  final String collegeName;
  @override
  final int collegeID;
  @override
  final DocumentReference<Object> reference;

  factory _$CollegeMapRecord(
          [void Function(CollegeMapRecordBuilder) updates]) =>
      (new CollegeMapRecordBuilder()..update(updates)).build();

  _$CollegeMapRecord._({this.collegeName, this.collegeID, this.reference})
      : super._();

  @override
  CollegeMapRecord rebuild(void Function(CollegeMapRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollegeMapRecordBuilder toBuilder() =>
      new CollegeMapRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollegeMapRecord &&
        collegeName == other.collegeName &&
        collegeID == other.collegeID &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, collegeName.hashCode), collegeID.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CollegeMapRecord')
          ..add('collegeName', collegeName)
          ..add('collegeID', collegeID)
          ..add('reference', reference))
        .toString();
  }
}

class CollegeMapRecordBuilder
    implements Builder<CollegeMapRecord, CollegeMapRecordBuilder> {
  _$CollegeMapRecord _$v;

  String _collegeName;
  String get collegeName => _$this._collegeName;
  set collegeName(String collegeName) => _$this._collegeName = collegeName;

  int _collegeID;
  int get collegeID => _$this._collegeID;
  set collegeID(int collegeID) => _$this._collegeID = collegeID;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CollegeMapRecordBuilder() {
    CollegeMapRecord._initializeBuilder(this);
  }

  CollegeMapRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _collegeName = $v.collegeName;
      _collegeID = $v.collegeID;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollegeMapRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CollegeMapRecord;
  }

  @override
  void update(void Function(CollegeMapRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CollegeMapRecord build() {
    final _$result = _$v ??
        new _$CollegeMapRecord._(
            collegeName: collegeName,
            collegeID: collegeID,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
