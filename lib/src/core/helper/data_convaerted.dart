import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String date(String data) {
  String inputDateString = data;
  DateTime inputDate = DateTime.parse(inputDateString);

  String formattedDate = DateFormat('dd-MM-yyyy').format(inputDate);

  return formattedDate.toString();
}

String time(String data) {
  String inputDateString = data;
  DateTime inputDate = DateTime.parse(inputDateString);

  final formattedDate = DateFormat('hh:mm a').format(inputDate);

  return formattedDate.toString();
}

String formatTime(TimeOfDay time) {
  final now = DateTime.now();
  final selectedDateTime = DateTime(now.year, now.month, now.day, time.hour, time.minute);
  final formattedTime = DateFormat.jm().format(selectedDateTime);
  return formattedTime;
}

String formatDate(DateTime date) {
  final formattedDate = DateFormat('yyyy-MM-dd').format(date);
  return formattedDate;
}

DateTime combineDateTime(DateTime date, TimeOfDay time) {
  return DateTime(date.year, date.month, date.day, time.hour, time.minute);
}

String mountformater(String data) {
  String inputDateString = data;
  DateTime inputDate = DateTime.parse(inputDateString);

  String formattedDate = DateFormat('MMM d y h:mm a').format(inputDate);

  return formattedDate.toString();
}

bool isToday(DateTime date) {
  DateTime now = DateTime.now();
  var difference = DateTime(date.year, date.month, date.day)
      .difference(DateTime(now.year, now.month, now.day))
      .inDays;

  return difference == 0;
}
