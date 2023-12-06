import 'package:intl/intl.dart';
import 'package:time_machine/time_machine.dart';

enum Date {
  /// Format the date to [dd-MM-yyyy]
  /// Example: 25-07-2021
  ddmmyyyy,

  /// Get the [day] of the week
  /// Example: 25-07-2021 -> Sunday
  day,
}

enum Time {
  /// Format the date to [H:mm:ss]
  /// Example: 13:52:16.125 -> 13:52:16
  hmmss,

  /// Format the date to [HH:mm]
  /// Example: 13:52:16.125 -> 13:52
  hmm,
}

extension DateTimeExtension on DateTime {
  /// Format the date given a [date] and [time] format and an optional [separator]
  /// Example: 25-07-2021 13:52:16.125 -> 25-07-2021 13:52:16
  /// Example: 25-07-2021 13:52:16.125 -> 25-07-2021, 13:52:16
  /// Example: 25-07-2021 13:52:16.125 -> 25-07-2021
  String format({Date? date, Time? time, String? separator}) {
    String dateTimeFormat = '';

    if (date == null && time == null) {
      return DateFormat('dd-MM-yyyy H:mm:ss').format(this);
    }

    // Format the date
    if (date == Date.ddmmyyyy) {
      dateTimeFormat = 'dd-MM-yyyy';
    } else if (date == Date.day) {
      dateTimeFormat = 'EEEE';
    }

    // Add a whitespace between the date and time if both are provided
    if (date != null && time != null) {
      // Add the separator between the date and time
      if (separator != null) dateTimeFormat += separator;

      dateTimeFormat += ' ';
    }

    // Format the time
    if (time == Time.hmmss) {
      dateTimeFormat += 'H:mm:ss';
    } else if (time == Time.hmm) {
      dateTimeFormat += 'H:mm';
    }

    return DateFormat(dateTimeFormat).format(this);
  }

  /// Calculate the elapsed time between the start date and the [end] date
  String elapsedTime({DateTime? end}) {
    final startDate = LocalDate(year, month, day);
    LocalDate endDate = LocalDate.today();

    // If the end date is not provided, use today's date
    if (end != null) {
      endDate = LocalDate(end.year, end.month, end.day);
    }

    final period = endDate.periodSince(startDate);

    if (period.years == 0 && period.months == 0) {
      return (period.days == 0 || period.days == 1)
          ? _formatDays(period)
          : "${_formatDays(period)} ago";
    } else if (period.years == 0 && period.months != 0) {
      return (period.days == 0)
          ? "${_formatMonths(period)} ago"
          : "${_formatMonths(period)} ${_formatDays(period)} ago";
    } else if (period.years != 0) {
      return (period.months == 0)
          ? "${_formatYears(period)} ago"
          : "${_formatYears(period)} ${_formatMonths(period)} ago";
    }

    return "Invalid date";
  }

  /// Format the days string
  String _formatDays(Period period) {
    if (period.years != 0) return "";
    if (period.days == 0) return "Today";
    if (period.days == 1) return period.months == 0 ? "Yesterday" : "1 day";
    return "${period.days} days";
  }

  /// Format the months string
  String _formatMonths(Period period) {
    if (period.months == 0) return "";
    return period.months == 1
        ? "${period.months} month"
        : "${period.months} months";
  }

  /// Format the years string
  String _formatYears(Period period) {
    if (period.years == 0) return "";
    return period.years == 1 ? "${period.years} year" : "${period.years} years";
  }
}
