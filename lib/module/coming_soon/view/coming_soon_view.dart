import 'package:flutter/material.dart';
import 'package:cinema_booking_app/core.dart';

class ComingSoonView extends StatefulWidget {
  const ComingSoonView({Key? key}) : super(key: key);

  Widget build(context, ComingSoonController controller) {
    controller.view = this;
    List<String> movies = [
      "belfast",
      "endgame",
      "moonfall",
      "spiderman",
      "tammy_faye",
      "moonfall",
      "spiderman",
      "belfast",
    ];

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
                SizedBox(
                  height: Get.height * 0.03,
                ),
                ReMoviesGrid(movies: movies)
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<ComingSoonView> createState() => ComingSoonController();
}
