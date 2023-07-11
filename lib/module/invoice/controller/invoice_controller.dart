import 'package:flutter/material.dart';
import 'package:cinema_booking_app/state_util.dart';
import '../view/invoice_view.dart';

class InvoiceController extends State<InvoiceView> implements MvcController {
  static late InvoiceController instance;
  late InvoiceView view;

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