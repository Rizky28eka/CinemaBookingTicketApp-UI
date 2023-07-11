import 'package:cinema_booking_app/core.dart';
import 'package:flutter/material.dart';

class BillboardController extends State<BillboardView>
    implements MvcController {
  static late BillboardController instance;
  late BillboardView view;

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
