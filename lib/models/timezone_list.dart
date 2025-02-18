import 'package:flutter_countries2/models/timezone.dart';

class TimeZoneList {
  final List<TimeZone>? timeZones;

  TimeZoneList({this.timeZones});

  factory TimeZoneList.fromJson(List<String>? parsedJson) {
    var timeZones = <TimeZone>[];
    if (parsedJson == null || parsedJson.isEmpty) return TimeZoneList();
    for (var timeZone in parsedJson) {
      timeZones.add(TimeZone.fromJson(timeZone));
    }
    return TimeZoneList(
      timeZones: timeZones,
    );
  }
}
