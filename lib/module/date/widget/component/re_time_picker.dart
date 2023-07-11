import 'package:cinema_booking_app/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReTimePicker extends StatefulWidget {
  const ReTimePicker({super.key, required this.times});
  final List<String> times;

  @override
  State<ReTimePicker> createState() => _ReTimePickerState();
}

class _ReTimePickerState extends State<ReTimePicker> {
  int selectedTime = DateTime.now().day - 1;
  updateSelectedDate(int newDate) {
    selectedTime = newDate;
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
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            separatorBuilder: (context, _) {
              return SizedBox(width: Get.width * 0.02);
            },
            shrinkWrap: true,
            itemCount: widget.times.length,
            itemBuilder: (context, index) {
              bool selected = selectedTime == index;

              return InkWell(
                onTap: () => updateSelectedDate(index),
                child: Container(
                  height: Get.height * 0.04,
                  width: Get.width * 0.18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Get.width * 0.04),
                    color: selected
                        ? const Color(0xFFF74346)
                        : const Color(0xFF4A4B56),
                  ),
                  child: Center(
                    child: Text(
                      "8:00 pm",
                      style: GoogleFonts.roboto(
                          color: const Color(0xFFFFFFFF),
                          fontSize: 12.6,
                          fontWeight: FontWeight.w500),
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
