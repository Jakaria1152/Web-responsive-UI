import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_responsive_ui/config/size_config.dart';
import 'package:web_responsive_ui/style.dart';

class InfoCard extends StatelessWidget {
  final String icon;
  final String? text; // ? null check dile required lage na
  final String? amount;
  const InfoCard({
    this.amount,required this.icon,this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          minWidth:
              200), // minimum 200 width nibe. difference dekhte hole baki duita constrant diye check korte hobe
      padding: EdgeInsets.only(left: 20, right: 40, top: 20, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            icon,
            width: 35.0,
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 2,
          ),
          PrimaryText(
            text: text.toString(),
            color: Colors.grey,
            size: 16,
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 2,
          ),
          PrimaryText(
            text: amount.toString(),
            fontWeight: FontWeight.w700,
            size: 18,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
