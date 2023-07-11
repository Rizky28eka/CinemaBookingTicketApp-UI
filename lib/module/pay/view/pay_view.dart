import 'package:cinema_booking_app/module/pay/widget/component/re_paymethod_picker.dart';
import 'package:flutter/material.dart';
import 'package:cinema_booking_app/core.dart';
import 'package:google_fonts/google_fonts.dart';

class PayView extends StatefulWidget {
  const PayView({Key? key}) : super(key: key);

  Widget build(context, PayController controller) {
    controller.view = this;

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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            "Checkout",
            style: GoogleFonts.roboto(
                color: const Color(0xFFF1F1F1),
                fontSize: 27,
                fontWeight: FontWeight.w800),
          ),
          leading: IconButton(
            padding: EdgeInsets.only(left: Get.width * 0.08),
            onPressed: () {
              Get.back();
            },
            icon: Image.asset(
              "assets/buttons/back_button.png",
              width: Get.width * 0.13,
              height: Get.height * 0.06,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.04),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/movies/checkout/endgame.png"),
                  SizedBox(width: Get.width * 0.03),
                  RichText(
                    text: TextSpan(
                      text: "Avengers:\nEndgame\n",
                      style: GoogleFonts.roboto(
                          color: const Color(0xFFF1F1F1),
                          fontSize: 25.74,
                          fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                          text: "Action, Sci-fi, Fantasy\n",
                          style: GoogleFonts.roboto(
                              color: const Color(0xFF4A4B56),
                              fontSize: 15.88,
                              fontWeight: FontWeight.w800),
                        ),
                        TextSpan(
                          text: "Medellín, Colombia",
                          style: GoogleFonts.roboto(
                              color: const Color(0xFFF1F1F1),
                              fontSize: 14.55,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: Get.height * 0.04),
              Text(
                "Pay method",
                style: GoogleFonts.roboto(
                    color: const Color(0xFFF1F1F1),
                    fontSize: 27,
                    fontWeight: FontWeight.w800),
              ),
              const RePaymethodPicker(
                payMethods: [
                  "Credit card",
                  "Bank Account",
                  "Apple Pay",
                  "Google Pay"
                ],
                payImages: ["credit_card", "bank", "apple_pay", "google_pay"],
              ),
              SizedBox(height: Get.height * 0.04),
              IconButton(
                  onPressed: () {
                    Get.to(const InvoiceView());
                  },
                  icon: Image.asset("assets/buttons/pay_button.png"))
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<PayView> createState() => PayController();
}
