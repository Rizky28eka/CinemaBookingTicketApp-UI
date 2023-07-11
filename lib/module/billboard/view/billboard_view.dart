import 'package:flutter/material.dart';
import 'package:cinema_booking_app/core.dart';
import 'package:google_fonts/google_fonts.dart';

class BillboardView extends StatefulWidget {
  const BillboardView({Key? key}) : super(key: key);

  Widget build(context, BillboardController controller) {
    controller.view = this;
    List<String> movies = ["end_game", "glass"];

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
        appBar: const ReHeaderAppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.03),
                Container(
                  height: Get.height * 0.13,
                  width: Get.width * 0.87,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Get.width * 0.05),
                    color: const Color(0xFF2B2B38),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Know the\npromotions of\n",
                          style: GoogleFonts.roboto(
                              color: const Color(0xFFF1F1F1),
                              fontSize: 20.53,
                              fontWeight: FontWeight.w300),
                          children: [
                            TextSpan(
                              text: "Tuesdays & Monday",
                              style: GoogleFonts.roboto(
                                  color: const Color(0xFFF1F1F1),
                                  fontSize: 20.53,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: Get.height * 0.09,
                        width: Get.width * 0.19,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Get.width * 0.05),
                            color: const Color(0xFFF74346)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/images/rotated_arrow.png"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.03),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReOutlinedButton(
                      label: "Services",
                    ),
                    ReOutlinedButton(label: "Theaters")
                  ],
                ),
                SizedBox(height: Get.height * 0.04),
                SizedBox(
                  height: Get.height * 0.45,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Image.asset(
                            "assets/images/${movies[index]}.png");
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: Get.width * 0.08);
                      },
                      itemCount: movies.length),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<BillboardView> createState() => BillboardController();
}
