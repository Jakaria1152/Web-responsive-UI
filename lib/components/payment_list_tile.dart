import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_responsive_ui/style.dart';

class paymentListTile extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;

  const paymentListTile({
    required this.icon,required this.label, required this.amount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0, right: 20),
      leading: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset(
          icon,
          width: 20,
        ),
      ),
      title: PrimaryText(
        text: label,
        size: 14,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryText(
            text: 'Successfully',
            size: 12,
            color: Colors.grey,
          ),
          PrimaryText(
              text: '${amount}',
              size: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black)
        ],
      ),
    );
  }
}
