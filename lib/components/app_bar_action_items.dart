import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarActionItems extends StatelessWidget {
  const AppBarActionItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/calendar.svg',
              width: 20.0,
            )),
        SizedBox(
          width: 10,
        ),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/ring.svg',
              width: 20.0,
            )),
        SizedBox(
          width: 15,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/D5603AQH03bxq8Eec1g/profile-displayphoto-shrink_800_800/0/1705556728814?e=2147483647&v=beta&t=5KkGK9hnwd2A-bOR8cBH6uLA6fvNrkJ0cMgXEAKKtmg'),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
          ],
        )
      ],
    );
  }
}
