import 'package:flutter/material.dart';
import 'package:cinema_booking_app/state_util.dart';
import '../view/movie_view.dart';

class MovieController extends State<MovieView> implements MvcController {
  static late MovieController instance;
  late MovieView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}