import 'package:flutils/extensions/date_time_extension.dart';
import 'package:test/test.dart';

void main() {
  group("Format", () {
    test("No arguments", () async {
      final dateTime = DateTime(2021, 07, 25, 13, 52, 16);

      expect(dateTime.format(), "25-07-2021 13:52:16");
    });
    test("Date", () async {
      final testCases = [
        {
          'dateTime': DateTime(2021, 07, 25),
          'dateFormat': Date.ddmmyyyy,
          'expected': '25-07-2021',
        },
        {
          'dateTime': DateTime(2021, 07, 25),
          'dateFormat': Date.day,
          'expected': 'Sunday',
        },
        {
          'dateTime': DateTime(2021, 07, 25),
          'dateFormat': Date.day,
          'separator': ',',
          'expected': 'Sunday',
        },
      ];

      for (final testCase in testCases) {
        final dateTime = testCase['dateTime'] as DateTime;
        final dateFormat = testCase['dateFormat'] as Date;
        final separator = testCase['separator'] as String?;
        final expected = testCase['expected'] as String;

        expect(
          dateTime.format(date: dateFormat, separator: separator),
          expected,
        );
      }
    });

    test("Time", () async {
      final testCases = [
        {
          'dateTime': DateTime(2021, 07, 25, 13, 52, 16),
          'timeFormat': Time.hmmss,
          'expected': '13:52:16',
        },
        {
          'dateTime': DateTime(2021, 07, 25, 13, 52, 16, 125),
          'timeFormat': Time.hmmss,
          'expected': '13:52:16',
        },
        {
          'dateTime': DateTime(2021, 07, 25, 13, 52, 16),
          'timeFormat': Time.hmm,
          'expected': '13:52',
        },
        {
          'dateTime': DateTime(2021, 07, 25, 13, 52, 16, 125),
          'timeFormat': Time.hmm,
          'expected': '13:52',
        },
        {
          'dateTime': DateTime(2021, 07, 25, 13, 52, 16),
          'timeFormat': Time.hmm,
          'separator': ',',
          'expected': '13:52',
        },
        {
          'dateTime': DateTime(2021, 07, 25, 13, 52, 16, 125),
          'timeFormat': Time.hmm,
          'separator': ',',
          'expected': '13:52',
        },
      ];

      for (final testCase in testCases) {
        final dateTime = testCase['dateTime'] as DateTime;
        final timeFormat = testCase['timeFormat'] as Time;
        final separator = testCase['separator'] as String?;

        final expected = testCase['expected'] as String;

        expect(
            dateTime.format(time: timeFormat, separator: separator), expected);
      }
    });

    test("Date and time", () async {
      final testCases = [
        {
          'dateTime': DateTime(2021, 07, 25, 13, 52, 16),
          'dateFormat': Date.ddmmyyyy,
          'timeFormat': Time.hmmss,
          'expected': '25-07-2021 13:52:16',
        },
        {
          'dateTime': DateTime(2021, 07, 25, 13, 52, 16),
          'dateFormat': Date.day,
          'timeFormat': Time.hmmss,
          'separator': ',',
          'expected': 'Sunday, 13:52:16',
        },
        {
          'dateTime': DateTime(2021, 07, 25, 13, 52, 16),
          'dateFormat': Date.ddmmyyyy,
          'timeFormat': Time.hmm,
          'expected': '25-07-2021 13:52',
        },
        {
          'dateTime': DateTime(2021, 07, 25, 13, 52, 16),
          'dateFormat': Date.ddmmyyyy,
          'timeFormat': Time.hmmss,
          'separator': ',',
          'expected': '25-07-2021, 13:52:16',
        },
        {
          'dateTime': DateTime(2021, 07, 25, 13, 52, 16),
          'dateFormat': Date.ddmmyyyy,
          'timeFormat': Time.hmm,
          'separator': ',',
          'expected': '25-07-2021, 13:52',
        },
      ];

      for (final testCase in testCases) {
        final dateTime = testCase['dateTime'] as DateTime;
        final dateFormat = testCase['dateFormat'] as Date;
        final timeFormat = testCase['timeFormat'] as Time;
        final separator = testCase['separator'] as String?;

        final expected = testCase['expected'] as String;

        expect(
          dateTime.format(
            date: dateFormat,
            time: timeFormat,
            separator: separator,
          ),
          expected,
        );
      }
    });
  });

  group("Elapsed Time", () {
    test("Calculate the period since", () {
      final testCases = [
        {
          'startDate': DateTime.now(),
          'expected': 'Today',
        },
        {
          'startDate': DateTime(2021, 12, 6),
          'endDate': DateTime(2021, 12, 6),
          'expected': 'Today',
        },
        {
          'startDate': DateTime(2021, 12, 5),
          'endDate': DateTime(2021, 12, 6),
          'expected': 'Yesterday',
        },
        {
          'startDate': DateTime(2021, 12, 5),
          'endDate': DateTime(2021, 12, 10),
          'expected': '5 days ago',
        },
        {
          'startDate': DateTime(2021, 11, 10),
          'endDate': DateTime(2021, 12, 10),
          'expected': '1 month ago',
        },
        {
          'startDate': DateTime(2021, 10, 10),
          'endDate': DateTime(2021, 12, 10),
          'expected': '2 months ago',
        },
        {
          'startDate': DateTime(2021, 11, 9),
          'endDate': DateTime(2021, 12, 10),
          'expected': '1 month 1 day ago',
        },
        {
          'startDate': DateTime(2021, 11, 5),
          'endDate': DateTime(2021, 12, 10),
          'expected': '1 month 5 days ago',
        },
        {
          'startDate': DateTime(2021, 10, 9),
          'endDate': DateTime(2021, 12, 10),
          'expected': '2 months 1 day ago',
        },
        {
          'startDate': DateTime(2021, 10, 8),
          'endDate': DateTime(2021, 12, 10),
          'expected': '2 months 2 days ago',
        },
        {
          'startDate': DateTime(2020, 12, 8),
          'endDate': DateTime(2021, 12, 10),
          'expected': '1 year ago',
        },
        {
          'startDate': DateTime(2020, 11, 8),
          'endDate': DateTime(2021, 12, 10),
          'expected': '1 year 1 month ago',
        },
        {
          'startDate': DateTime(2020, 10, 8),
          'endDate': DateTime(2021, 12, 10),
          'expected': '1 year 2 months ago',
        },
        {
          'startDate': DateTime(2019, 12, 9),
          'endDate': DateTime(2021, 12, 10),
          'expected': '2 years ago',
        },
        {
          'startDate': DateTime(2019, 11, 9),
          'endDate': DateTime(2021, 12, 10),
          'expected': '2 years 1 month ago',
        },
        {
          'startDate': DateTime(2019, 10, 8),
          'endDate': DateTime(2021, 12, 10),
          'expected': '2 years 2 months ago',
        },
      ];

      for (final testCase in testCases) {
        final start = testCase['startDate'] as DateTime;
        final end = testCase['endDate'] as DateTime?;
        final expected = testCase['expected'] as String;

        final elapsedTime = start.elapsedTime(
          end: end,
        );

        expect(elapsedTime, expected);
      }
    });
  });
}
