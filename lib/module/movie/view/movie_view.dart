import 'package:flutter/material.dart';
import 'package:cinema_booking_app/core.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieView extends StatefulWidget {
  const MovieView({Key? key}) : super(key: key);

  Widget build(context, MovieController controller) {
    controller.view = this;
    List<String> outlinedButtons = ["Action", "Science fiction", "Fantasy"];
    List<String> actors = ["sam", "sigourney", "stephen", "zoe", "kiri"];

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
          padding: EdgeInsets.only(top: Get.height * 0.04),
          child: Column(
            children: [
              Stack(
                children: [
                  ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0x00161621),
                              Color(0xFF161621),
                              Color(0x00161621)
                            ]).createShader(bounds);
                      },
                      blendMode: BlendMode.dstIn,
                      child: Image.asset("assets/banner/endgame_banner.png")),
                  Positioned(
                    left: Get.width * 0.08,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Image.asset("assets/buttons/back_button.png"),
                    ),
                  ),
                  Positioned(
                    right: Get.width * 0.13,
                    bottom: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/buttons/trailer_button.png"),
                    ),
                  )
                ],
              ),
              SizedBox(height: Get.height * 0.01),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Avengers\n",
                  style: GoogleFonts.roboto(
                      color: const Color(0xFFF74346),
                      fontSize: 33.85,
                      fontWeight: FontWeight.w700),
                  children: [
                    TextSpan(
                      text: "EndGame",
                      style: GoogleFonts.roboto(
                          color: const Color(0xFFF74346),
                          fontSize: 26.18,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ...List.generate(
                    outlinedButtons.length,
                    (index) => OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide.none,
                          backgroundColor: const Color(0xFF2B2B38)),
                      onPressed: () {},
                      child: Text(
                        outlinedButtons[index],
                        style: GoogleFonts.roboto(
                            color: const Color(0xFFFFFFFF),
                            fontSize: 13.23,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Get.height * 0.11,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.05,
                      vertical: Get.height * 0.01),
                  physics: const ScrollPhysics(),
                  itemCount: actors.length,
                  separatorBuilder: (context, _) {
                    return SizedBox(width: Get.width * 0.03);
                  },
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Image.asset("assets/actors/${actors[index]}.png");
                  },
                ),
              ),
              Text(
                "Adrift in space with no food or water, Tony\nStark sends a message to Pepper Potts as his\noxygen supply starts to dwindle. Meanwhile, \nthe remaining Avengers...",
                style: GoogleFonts.inter(
                    color: const Color(0xFFF1F1F1),
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Get.height * 0.01),
              IconButton(
                onPressed: () {
                  Get.to(const DateView());
                },
                icon: Image.asset(
                  "assets/buttons/booking_button.png",
                  height: Get.height * 0.07,
                  width: Get.width * 0.6,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<MovieView> createState() => MovieController();
}
