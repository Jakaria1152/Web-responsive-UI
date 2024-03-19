import 'package:flutter/material.dart';
import 'package:web_responsive_ui/components/app_bar_action_items.dart';
import 'package:web_responsive_ui/components/payment_details_list.dart';
import 'package:web_responsive_ui/config/size_config.dart';
import 'package:web_responsive_ui/components/header_dash_board.dart';

import 'components/sidemenu.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // very important
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 1, child: sidemenu()),
            Expanded(
                flex: 10,
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    child: Column(
                      children: [
                        HeaderDashBoard(),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 4,
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth,
                          child: Wrap(
                            runSpacing: 20,
                            spacing: 20.0,
                            alignment: WrapAlignment.spaceBetween,
                            children: [
                              Container()
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight,
                  color: Colors.grey.shade100,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [AppBarActionItems(), paymentDetailsList()],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
