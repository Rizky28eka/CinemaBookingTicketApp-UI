import 'package:flutter/material.dart';
import 'package:cinema_booking_app/state_util.dart';
import '../view/coming_soon_view.dart';

class ComingSoonController extends State<ComingSoonView> implements MvcController {
  static late ComingSoonController instance;
  late ComingSoonView view;

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