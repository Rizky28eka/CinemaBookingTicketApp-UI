import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:cinema_booking_app/core.dart';
import 'package:google_fonts/google_fonts.dart';

class InvoiceView extends StatefulWidget {
  const InvoiceView({Key? key}) : super(key: key);

  Widget build(context, InvoiceController controller) {
    controller.view = this;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0x00161621), Color(0xFF161621)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.11),
              Text(
                "Thank you for\npurchasing your movie\nticket with us. We hope\nyou enjoy your movie\nexperience.",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    color: const Color(0xFFF1F1F1),
                    fontSize: 25,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: Get.height * 0.05),
              Stack(
                clipBehavior: Clip.hardEdge,
                children: [
                  Container(
                    height: Get.height * 0.42,
                    width: Get.width * 0.82,
                    decoration: BoxDecoration(
                      color: const Color(0xFF2B2B38),
                      borderRadius: BorderRadius.circular(Get.width * 0.04),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: Get.height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Avengers",
                              style: GoogleFonts.roboto(
                                  color: const Color(0xFFFFFFFF),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "10th Jun, 19:00",
                              style: GoogleFonts.roboto(
                                  color: const Color(0xFF4A4B56),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(height: Get.height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Cinema",
                                  style: GoogleFonts.roboto(
                                      color: const Color(0xFFFFFFFF),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Medellín",
                                  style: GoogleFonts.roboto(
                                      color: const Color(0xFF4A4B56),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Order",
                                  style: GoogleFonts.roboto(
                                      color: const Color(0xFFFFFFFF),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "QW1E0RTY",
                                  style: GoogleFonts.roboto(
                                      color: const Color(0xFF4A4B56),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: Get.height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Tickets",
                                  style: GoogleFonts.roboto(
                                      color: const Color(0xFFFFFFFF),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "3",
                                  style: GoogleFonts.roboto(
                                      color: const Color(0xFF4A4B56),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Seatings",
                                  style: GoogleFonts.roboto(
                                      color: const Color(0xFFFFFFFF),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "B1 - C1 -C2",
                                  style: GoogleFonts.roboto(
                                      color: const Color(0xFF4A4B56),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: Get.height * 0.08),
                        DottedLine(
                          dashColor: const Color(0xFF161621),
                          dashLength: Get.width * 0.04,
                          lineThickness: Get.width * 0.008,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: Get.height * 0.09,
                    left: Get.width * -0.06,
                    child: Container(
                      height: Get.height * 0.05,
                      width: Get.width * 0.11,
                      decoration: const BoxDecoration(
                        color: Color(0xFF161621),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: Get.height * 0.09,
                    right: Get.width * -0.06,
                    child: Container(
                      height: Get.height * 0.05,
                      width: Get.width * 0.11,
                      decoration: const BoxDecoration(
                        color: Color(0xFF161621),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: Get.height * 0.03,
                      right: Get.width * 0.13,
                      child: Image.asset("assets/banner/code_bars.png"))
                ],
              ),
              SizedBox(height: Get.height * 0.06),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/buttons/return_button.png"))
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<InvoiceView> createState() => InvoiceController();
}
