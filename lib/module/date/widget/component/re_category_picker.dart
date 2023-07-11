import 'package:cinema_booking_app/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReCategoryPicker extends StatefulWidget {
  const ReCategoryPicker(
      {super.key, required this.dates, required this.months});
  final List<int> dates;
  final Map<int, String> months;

  @override
  State<ReCategoryPicker> createState() => _ReCategoryPickerState();
}

class _ReCategoryPickerState extends State<ReCategoryPicker> {
  int selectedDate = DateTime.now().day - 1;
  updateSelectedDate(int newDate) {
    selectedDate = newDate;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            separatorBuilder: (context, _) {
              return SizedBox(width: Get.width * 0.02);
            },
            shrinkWrap: true,
            itemCount: widget.dates.length,
            itemBuilder: (context, index) {
              bool selected = selectedDate == index;

              return InkWell(
                onTap: () => updateSelectedDate(index),
                child: Container(
                  padding: EdgeInsets.only(top: Get.height * 0.01),
                  height: Get.height * 0.06,
                  width: Get.width * 0.13,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Get.width * 0.04),
                    color: selected
                        ? const Color(0xFFF74346)
                        : const Color(0xFF4A4B56),
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          "${widget.months.values.elementAt(DateTime.now().month - 1)}\n",
                      style: GoogleFonts.roboto(
                          color: const Color(0xFFCBCBCB),
                          fontSize: 10.24,
                          fontWeight: FontWeight.w700),
                      children: [
                        TextSpan(
                          text: widget.dates[index].toString(),
                          style: GoogleFonts.roboto(
                              color: const Color(0xFFF1F1F1),
                              fontSize: 19.39,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
