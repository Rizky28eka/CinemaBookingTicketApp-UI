import 'package:cinema_booking_app/core.dart';
import 'package:flutter/material.dart';

class MovieSearchDelegate extends SearchDelegate {
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

  @override
  List<Widget>? buildActions(BuildContext context) {
    return <Widget>[
      Container(
        width: Get.width * 0.06,
        height: Get.height * 0.03,
        margin: EdgeInsets.only(right: Get.width * 0.08),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Get.width * 0.02),
          color: const Color(0xFFF74346),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: const Color(0xFFF74346),
          ),
          onPressed: () {
            query = "";
          },
          child: Icon(
            Icons.clear,
            color: Colors.white,
            size: Get.width * 0.04,
          ),
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      iconSize: Get.height * 0.06,
      padding: EdgeInsets.only(left: Get.width * 0.08),
      onPressed: () {
        close(context, null);
      },
      icon: Image.asset(
        "assets/buttons/back_button.png",
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> moviesResult = [];

    for (var movie in movies) {
      if (movie.toLowerCase().contains(query.toLowerCase())) {
        moviesResult.add(movie);
      }
    }

    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0x00161621), Color(0xFF161621)],
        ),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.08, vertical: Get.height * 0.03),
      child: GridView.builder(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: moviesResult.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 153.24 / 263,
            mainAxisSpacing: Get.height * 0.01,
            crossAxisSpacing: Get.width * 0.06,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Get.to(const MovieView());
              },
              child: Image.asset("assets/movies/${moviesResult[index]}.png"));
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> moviesResult = [];

    for (var movie in movies) {
      if (movie.toLowerCase().contains(query.toLowerCase())) {
        moviesResult.add(movie);
      }
    }

    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0x00161621), Color(0xFF161621)],
        ),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.08, vertical: Get.height * 0.03),
      child: GridView.builder(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: moviesResult.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 153.24 / 263,
            mainAxisSpacing: Get.height * 0.01,
            crossAxisSpacing: Get.width * 0.06,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Get.to(const MovieView());
              },
              child: Image.asset("assets/movies/${moviesResult[index]}.png"));
        },
      ),
    );
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
        inputDecorationTheme: const InputDecorationTheme(
            border: InputBorder
                .none), // to remove underline in the search textfield
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        textTheme: const TextTheme().copyWith(
          titleLarge: const TextStyle(
            color: Color(0xFFF1F1F1),
          ),
        ),
        scaffoldBackgroundColor: Colors.transparent);
  }
}
