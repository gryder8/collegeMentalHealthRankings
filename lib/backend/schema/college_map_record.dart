import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'college_map_record.g.dart';

abstract class CollegeMapRecord
    implements Built<CollegeMapRecord, CollegeMapRecordBuilder> {
  static Serializer<CollegeMapRecord> get serializer =>
      _$collegeMapRecordSerializer;

  @nullable
  String get collegeName;

  @nullable
  int get collegeID;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CollegeMapRecordBuilder builder) => builder
    ..collegeName = ''
    ..collegeID = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CollegeMap');

  static Stream<CollegeMapRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CollegeMapRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static CollegeMapRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      CollegeMapRecord(
        (c) => c
          ..collegeName = snapshot.data['collegeName']
          ..collegeID = snapshot.data['collegeID']
          ..reference = CollegeMapRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<CollegeMapRecord>> search(
          {String term,
          FutureOr<LatLng> location,
          int maxResults,
          double searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'CollegeMap',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  CollegeMapRecord._();
  factory CollegeMapRecord([void Function(CollegeMapRecordBuilder) updates]) =
      _$CollegeMapRecord;

  static CollegeMapRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCollegeMapRecordData({
  String collegeName,
  int collegeID,
}) =>
    serializers.toFirestore(
        CollegeMapRecord.serializer,
        CollegeMapRecord((c) => c
          ..collegeName = collegeName
          ..collegeID = collegeID));
