import 'package:cinema_booking_app/core.dart';
import 'package:flutter/material.dart';

class RootController extends State<RootView>
    with TickerProviderStateMixin
    implements MvcController {
  static late RootController instance;
  late RootView view;

  @override
  void initState() {
    instance = this;
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Widget> pages = const [
    BillboardView(),
    ComingSoonView(),
  ];

  int currentIndex = 1;
  void setCurrentIndex(int index) {
    currentIndex = index;
    setState(() {});
  }

  late final TabController tabController;
}
