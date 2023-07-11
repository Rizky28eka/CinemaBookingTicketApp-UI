import 'package:cinema_booking_app/module/date/widget/component/re_book_widget.dart';
import 'package:cinema_booking_app/module/date/widget/component/re_category_picker.dart';
import 'package:flutter/material.dart';
import 'package:cinema_booking_app/core.dart';
import 'package:google_fonts/google_fonts.dart';

class DateView extends StatefulWidget {
  const DateView({Key? key}) : super(key: key);

  Widget build(context, DateController controller) {
    controller.view = this;
    List<String> bookStatuses = ["Selected", "Reserved", "Available"];

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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            "Select Date",
            style: GoogleFonts.roboto(
                color: const Color(0xFFF1F1F1),
                fontSize: 27,
                fontWeight: FontWeight.w800),
          ),
          leading: IconButton(
            padding: EdgeInsets.only(left: Get.width * 0.08),
            onPressed: () {
              Get.back();
            },
            icon: Image.asset(
              "assets/buttons/back_button.png",
              width: Get.width * 0.13,
              height: Get.height * 0.06,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
          child: Column(
            children: [
              Container(
                height: Get.width * 0.85,
                width: Get.height * 0.42,
                decoration: BoxDecoration(
                  color: const Color(0xFF2B2B38),
                  borderRadius: BorderRadius.circular(Get.width * 0.06),
                ),
                child: Column(
                  children: [
                    SizedBox(height: Get.height * 0.03),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: Get.height * 0.25,
                          width: Get.width * 0.32,
                          child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 24,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 25.53 / 25.53,
                              crossAxisCount: 4,
                              crossAxisSpacing: Get.width * 0.02,
                              mainAxisSpacing: Get.width * 0.02,
                            ),
                            itemBuilder: (context, index) {
                              String bookStatus = "Available";
                              if (7 < index && index < 12) {
                                bookStatus = "Selected";
                              }
                              if (11 < index && index < 18) {
                                bookStatus = "Reserved";
                              }
                              return ReBookWidget(
                                bookStatus: bookStatus,
                                height: 0.03,
                                width: 0.07,
                                radius: 0.01,
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.25,
                          width: Get.width * 0.32,
                          child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 24,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 25.53 / 25.53,
                              crossAxisCount: 4,
                              crossAxisSpacing: Get.width * 0.02,
                              mainAxisSpacing: Get.width * 0.02,
                            ),
                            itemBuilder: (context, index) {
                              String bookStatus = "Available";
                              if (15 < index && index < 24) {
                                bookStatus = "Selected";
                              }

                              if (4 < index && index < 16) {
                                bookStatus = "Reserved";
                              }
                              return ReBookWidget(
                                bookStatus: bookStatus,
                                height: 0.03,
                                width: 0.07,
                                radius: 0.01,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height * 0.03),
                    ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFD9D9D9),
                                Color(0xFFD9D9D9),
                                Color(0xFFD9D9D9)
                              ]).createShader(bounds);
                        },
                        blendMode: BlendMode.dstIn,
                        child: Image.asset("assets/images/line.png")),
                    SizedBox(height: Get.height * 0.01),
                    Text(
                      "Screen",
                      style: GoogleFonts.roboto(
                          color: const Color(0xFFFFFFFF),
                          fontSize: 12.77,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: Get.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ...List.generate(
                          bookStatuses.length,
                          (index) => Row(
                            children: [
                              ReBookWidget(
                                bookStatus: bookStatuses[index],
                                height: 0.02,
                                width: 0.04,
                                radius: 0.01,
                              ),
                              SizedBox(width: Get.width * 0.01),
                              Text(
                                bookStatuses[index],
                                style: GoogleFonts.roboto(
                                    color: const Color(0xFFFFFFFF),
                                    fontSize: 12.77,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.01),
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: Get.width * 0.88,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2B2B38),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Get.width * 0.06),
                      topRight: Radius.circular(Get.width * 0.06),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: Get.height * 0.01),
                      Text(
                        "Selected Day",
                        style: GoogleFonts.roboto(
                            color: const Color(0xFFFFFFFF),
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(height: Get.height * 0.01),
                      Expanded(
                        child: SizedBox(
                          width: Get.width * 0.75,
                          child: ReCategoryPicker(
                              dates: controller.dates,
                              months: controller.months),
                        ),
                      ),
                      SizedBox(height: Get.height * 0.01),
                      Text(
                        "Select Time",
                        style: GoogleFonts.roboto(
                            color: const Color(0xFFFFFFFF),
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(height: Get.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: Get.height * 0.04,
                            width: Get.width * 0.18,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Get.width * 0.04),
                              color: const Color(0xFF4A4B56),
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
                          SizedBox(width: Get.width * 0.02),
                          Container(
                            height: Get.height * 0.04,
                            width: Get.width * 0.18,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Get.width * 0.04),
                              color: const Color(0xFFF74346),
                            ),
                            child: Center(
                              child: Text(
                                "8:45 pm",
                                style: GoogleFonts.roboto(
                                    color: const Color(0xFFFFFFFF),
                                    fontSize: 12.6,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          SizedBox(width: Get.width * 0.02),
                          Container(
                            height: Get.height * 0.04,
                            width: Get.width * 0.18,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Get.width * 0.04),
                              color: const Color(0xFF4A4B56),
                            ),
                            child: Center(
                              child: Text(
                                "10:00 pm",
                                style: GoogleFonts.roboto(
                                    color: const Color(0xFFFFFFFF),
                                    fontSize: 12.6,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Get.height * 0.01),
                      Text(
                        "Select Quality",
                        style: GoogleFonts.roboto(
                            color: const Color(0xFFFFFFFF),
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: Get.height * 0.04,
                            width: Get.width * 0.12,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Get.width * 0.04),
                              color: const Color(0xFF4A4B56),
                            ),
                            child: Center(
                              child: Text(
                                "2D",
                                style: GoogleFonts.roboto(
                                    color: const Color(0xFFFFFFFF),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          SizedBox(width: Get.width * 0.02),
                          Container(
                            height: Get.height * 0.04,
                            width: Get.width * 0.12,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Get.width * 0.04),
                              color: const Color(0xFFF74346),
                            ),
                            child: Center(
                              child: Text(
                                "3D",
                                style: GoogleFonts.roboto(
                                    color: const Color(0xFFFFFFFF),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Get.height * 0.01),
                      IconButton(
                        onPressed: () {
                          Get.to(const PayView());
                        },
                        icon: Image.asset("assets/buttons/checkout_button.png"),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DateView> createState() => DateController();
}
