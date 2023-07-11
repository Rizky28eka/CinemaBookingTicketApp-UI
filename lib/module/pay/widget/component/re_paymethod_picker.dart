import 'package:cinema_booking_app/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RePaymethodPicker extends StatefulWidget {
  const RePaymethodPicker(
      {super.key, required this.payMethods, required this.payImages});
  final List<String> payMethods;
  final List<String> payImages;

  @override
  State<RePaymethodPicker> createState() => _RePaymethodPickerState();
}

class _RePaymethodPickerState extends State<RePaymethodPicker> {
  int? selectedIndex;
  updateSelected(int index) {
    selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: Get.height * 0.29,
          width: Get.width * 0.82,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: widget.payMethods.length,
            itemBuilder: (context, index) {
              bool isSelected = selectedIndex == index;

              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: Get.height * 0.07,
                            width: Get.width * 0.14,
                            child: Image.asset(
                                "assets/payment/${widget.payImages[index]}.png"),
                          ),
                          SizedBox(width: Get.width * 0.02),
                          Text(
                            widget.payMethods[index].toString(),
                            textAlign: TextAlign.right,
                            style: GoogleFonts.roboto(
                                color: const Color(0xFF4A4B56),
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Checkbox(
                        activeColor: const Color(0xFF161621),
                        checkColor: const Color(0xFFF74346),
                        value: (isSelected) ? true : false,
                        side: BorderSide(
                          width: Get.width * 0.007,
                          color: const Color(0xFF4C4F90),
                        ),
                        onChanged: (selected) {
                          updateSelected(index);
                        },
                      )
                    ],
                  ),
                  Divider(
                    color: const Color(0xFF2B2B38),
                    height: Get.height * 0.005,
                    thickness: Get.width * 0.008,
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
