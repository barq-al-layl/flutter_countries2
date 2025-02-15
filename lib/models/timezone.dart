class TimeZone {
  Duration? offset;
  String? offsetType;

  TimeZone({this.offset, this.offsetType});

  factory TimeZone.fromJson(String timezone) {
    if (timezone.isEmpty) return TimeZone();
    List<String> timeZoneSplit = timezone.split(':');
    int hours = int.parse(timeZoneSplit[0].substring(0));
    int mintues =
        timeZoneSplit.length > 1 ? int.parse(timezone.split(':')[1]) : 0;
    return TimeZone(
        offsetType: timezone.startsWith('-') ? '-' : '+',
        offset: Duration(hours: hours, minutes: mintues));
  }
}
