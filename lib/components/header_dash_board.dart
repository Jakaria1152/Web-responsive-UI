import 'package:flutter/material.dart';
import 'package:web_responsive_ui/style.dart';

class HeaderDashBoard extends StatelessWidget {
  const HeaderDashBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: 'Dashboard',
              size: 30,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
            PrimaryText(
              text: 'Payments',
              size: 16,
              fontWeight: FontWeight.w800,
              color: Colors.grey,
            ),
          ],
        ),
        Spacer(
          flex: 1,
        ), //see that Spacer
        Expanded(
            flex: 1,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.only(left: 40, right: 5),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14)),
            ))
      ],
    );
  }
}
