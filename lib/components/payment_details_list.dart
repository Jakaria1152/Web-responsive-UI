import 'package:flutter/material.dart';
import 'package:web_responsive_ui/config/size_config.dart';
import 'package:web_responsive_ui/style.dart';

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
        SizedBox(height: SizeConfig.blockSizeVertical!*5,),
        Column(
crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          PrimaryText(text: 'Recent Activities',size: 18,fontWeight: FontWeight.w800,),
            PrimaryText(text: '19 mar 2024',size: 14,fontWeight: FontWeight.w400,)
          ],
        )
      ],
    );
  }
}
