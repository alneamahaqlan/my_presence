// Custom converter for Firestore Timestamp
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampConverter implements JsonConverter<Timestamp, dynamic> {
  const TimestampConverter();

  @override
  Timestamp fromJson(dynamic json) {
    if (json is Timestamp) {
      return json;
    } else if (json is String) {
      return Timestamp.fromDate(DateTime.parse(json));
    } else {
      return Timestamp.now(); // Default to now if null or invalid
    }
  }

  @override
  dynamic toJson(Timestamp timestamp) => timestamp;
}