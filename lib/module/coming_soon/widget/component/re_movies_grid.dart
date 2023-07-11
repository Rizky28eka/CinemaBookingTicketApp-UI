import 'package:cinema_booking_app/core.dart';
import 'package:flutter/material.dart';

class ReMoviesGrid extends StatelessWidget {
  const ReMoviesGrid({
    super.key,
    required this.movies,
  });

  final List<String> movies;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: movies.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 153.24 / 263,
          mainAxisSpacing: Get.height * 0.01,
          crossAxisSpacing: Get.width * 0.06,
          crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Image.asset("assets/movies/${movies[index]}.png");
      },
    );
  }
}
