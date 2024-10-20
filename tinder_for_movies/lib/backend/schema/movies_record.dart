import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MoviesRecord extends FirestoreRecord {
  MoviesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "trailerLink" field.
  String? _trailerLink;
  String get trailerLink => _trailerLink ?? '';
  bool hasTrailerLink() => _trailerLink != null;

  // "genre" field.
  String? _genre;
  String get genre => _genre ?? '';
  bool hasGenre() => _genre != null;

  // "length" field.
  String? _length;
  String get length => _length ?? '';
  bool hasLength() => _length != null;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  bool hasYear() => _year != null;

  // "likedByUsers" field.
  List<DocumentReference>? _likedByUsers;
  List<DocumentReference> get likedByUsers => _likedByUsers ?? const [];
  bool hasLikedByUsers() => _likedByUsers != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _image = snapshotData['Image'] as String?;
    _description = snapshotData['description'] as String?;
    _trailerLink = snapshotData['trailerLink'] as String?;
    _genre = snapshotData['genre'] as String?;
    _length = snapshotData['length'] as String?;
    _year = castToType<int>(snapshotData['year']);
    _likedByUsers = getDataList(snapshotData['likedByUsers']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('movies');

  static Stream<MoviesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MoviesRecord.fromSnapshot(s));

  static Future<MoviesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MoviesRecord.fromSnapshot(s));

  static MoviesRecord fromSnapshot(DocumentSnapshot snapshot) => MoviesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MoviesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MoviesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MoviesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MoviesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMoviesRecordData({
  String? title,
  String? image,
  String? description,
  String? trailerLink,
  String? genre,
  String? length,
  int? year,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'Image': image,
      'description': description,
      'trailerLink': trailerLink,
      'genre': genre,
      'length': length,
      'year': year,
    }.withoutNulls,
  );

  return firestoreData;
}

class MoviesRecordDocumentEquality implements Equality<MoviesRecord> {
  const MoviesRecordDocumentEquality();

  @override
  bool equals(MoviesRecord? e1, MoviesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description &&
        e1?.trailerLink == e2?.trailerLink &&
        e1?.genre == e2?.genre &&
        e1?.length == e2?.length &&
        e1?.year == e2?.year &&
        listEquality.equals(e1?.likedByUsers, e2?.likedByUsers);
  }

  @override
  int hash(MoviesRecord? e) => const ListEquality().hash([
        e?.title,
        e?.image,
        e?.description,
        e?.trailerLink,
        e?.genre,
        e?.length,
        e?.year,
        e?.likedByUsers
      ]);

  @override
  bool isValidKey(Object? o) => o is MoviesRecord;
}
