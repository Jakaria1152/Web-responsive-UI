import 'package:flutter/material.dart';
import 'package:web_responsive_ui/components/payment_list_tile.dart';
import 'package:web_responsive_ui/config/size_config.dart';
import 'package:web_responsive_ui/style.dart';

import '../data.dart';

class paymentDetailsList extends StatelessWidget {
  const paymentDetailsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 15, offset: Offset(10, 15)),
              ]),
          child: Image.asset('assets/card.png'),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
                text: 'Recent Activities',
                size: 18,
                fontWeight: FontWeight.w800,
                color: Colors.black),
            PrimaryText(
              text: '19 mar 2024',
              size: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            )
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        Column(
          children: List.generate(recentActivities.length, (index) => paymentListTile(
            icon: recentActivities[index]["icon"].toString(), // very important toString() otherwise get error
            label: recentActivities[index]["label"].toString(),
            amount: recentActivities[index]["amount"].toString(),
          )),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
                text: 'Upcoming Payments',
                size: 18,
                fontWeight: FontWeight.w800,
                color: Colors.black),
            PrimaryText(
              text: '25 mar 2024',
              size: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            )
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        Column(
          children: List.generate(upcomingPayments.length, (index) => paymentListTile(
            icon: upcomingPayments[index]["icon"].toString(), // very important toString() otherwise get error
            label: upcomingPayments[index]["label"].toString(),
            amount: upcomingPayments[index]["amount"].toString(),
          )),
        ),

      ],
    );
  }
}
