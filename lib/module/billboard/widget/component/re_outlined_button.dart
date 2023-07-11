import 'package:cinema_booking_app/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReOutlinedButton extends StatefulWidget {
  const ReOutlinedButton({
    super.key,
    required this.label,
  });
  final String label;

  @override
  State<ReOutlinedButton> createState() => _ReOutlinedButtonState();
}

class _ReOutlinedButtonState extends State<ReOutlinedButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.07,
      width: Get.width * 0.41,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: const Color(0xFF2B2B38),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Get.width * 0.05),
          ),
          side: (isPressed)
              ? BorderSide(
                  width: Get.width * 0.01,
                  color: const Color(0xFFF74346),
                )
              : BorderSide.none,
        ),
        onPressed: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Text(
          widget.label,
          style: (isPressed)
              ? GoogleFonts.roboto(
                  color: const Color(0xFFF74346),
                  fontSize: 22.67,
                  fontWeight: FontWeight.w700)
              : GoogleFonts.roboto(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 21.55,
                  fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
