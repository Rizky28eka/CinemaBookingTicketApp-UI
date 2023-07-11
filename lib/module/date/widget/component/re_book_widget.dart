import 'package:cinema_booking_app/core.dart';
import 'package:flutter/material.dart';

class ReBookWidget extends StatelessWidget {
  const ReBookWidget(
      {super.key,
      required this.bookStatus,
      required this.height,
      required this.width,
      required this.radius});
  final String bookStatus;
  final double height;
  final double width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * height,
      width: Get.width * width,
      decoration: BoxDecoration(
        border: (bookStatus == "Available")
            ? Border.all(
                color: const Color(0xFFF74346), width: Get.width * 0.005)
            : null,
        borderRadius: BorderRadius.circular(Get.width * radius),
        color: (bookStatus == "Selected")
            ? const Color(0xFFF74346)
            : (bookStatus == "Reserved")
                ? const Color(0xFF4C4F90)
                : const Color(0xFF2B2B38),
      ),
    );
  }
}
