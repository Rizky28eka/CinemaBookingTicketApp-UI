import 'package:cinema_booking_app/core.dart';
import 'package:flutter/material.dart';

class DateController extends State<DateView> implements MvcController {
  static late DateController instance;
  late DateView view;

  @override
  void initState() {
    instance = this;
    super.initState();

    int daysInMonth(DateTime date) {
      var firstDayThisMonth = DateTime(date.year, date.month, date.day);
      var firstDayNextMonth = DateTime(firstDayThisMonth.year,
          firstDayThisMonth.month + 1, firstDayThisMonth.day);
      return firstDayNextMonth.difference(firstDayThisMonth).inDays;
    }

    var now = DateTime(2023, 6);
    var totalDays = daysInMonth(now);
    dates = List.generate(totalDays, (index) => index + 1);
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  Map<int, String> months = {
    1: "Jan",
    2: "Feb",
    3: "Mar",
    4: "Apr",
    5: "May",
    6: "Jun",
    7: "Jul",
    8: "Aug",
    9: "Sep",
    10: "Oct",
    11: "Nov",
    12: "Dec",
  };

  late List<int> dates;
  List<String> times = ["8:00 pm", "8:45 pm", "10:00 pm"];
}
