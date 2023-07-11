import 'package:cinema_booking_app/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReHeaderAppBar extends StatelessWidget implements PreferredSize {
  const ReHeaderAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Container(
          height: Get.height * 0.06,
          width: Get.width * 0.13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Get.width * 0.03),
            color: const Color(0xFFF74346),
          ),
          child: IconButton(
            onPressed: () {
              showSearch(context: context, delegate: MovieSearchDelegate());
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(width: Get.width * 0.03),
        Padding(
          padding: EdgeInsets.only(right: Get.width * 0.08),
          child: Image.asset("assets/images/profile_pic.png"),
        )
      ],
      backgroundColor: Colors.transparent,
      centerTitle: false,
      titleSpacing: 0,
      title: Padding(
        padding: EdgeInsets.only(left: Get.width * 0.08),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Get.width * 0.03),
            color: const Color(0xFF2B2B38),
          ),
          height: Get.height * 0.06,
          width: Get.width * 0.39,
          child: Row(
            children: [
              SizedBox(width: Get.width * 0.05),
              RichText(
                text: TextSpan(
                  text: "Choose cinema\n",
                  style: GoogleFonts.roboto(
                      color: const Color(0xFFF74346),
                      fontSize: 12,
                      fontWeight: FontWeight.w900),
                  children: [
                    TextSpan(
                        text: "Medellín",
                        style: GoogleFonts.roboto(
                            color: const Color(0xFFF1F1F1),
                            fontSize: 17,
                            fontWeight: FontWeight.w300))
                  ],
                ),
              ),
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Image.asset('assets/images/arrow_downward.png'))
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget get child => this;

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);
}
