import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_responsive_ui/components/app_bar_action_items.dart';
import 'package:web_responsive_ui/components/header_dash_board.dart';
import 'package:web_responsive_ui/components/payment_details_list.dart';
import 'package:web_responsive_ui/config/responsive.dart';
import 'package:web_responsive_ui/config/size_config.dart';
import 'package:web_responsive_ui/components/info_card.dart';
import 'package:web_responsive_ui/style.dart';

import 'components/history_table.dart';
import 'components/sidemenu.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
    SizeConfig().init(context); // very important
    return Scaffold(
      key: _drawerkey,
      drawer: SizedBox(width: 100,child: sidemenu(),),
      appBar: Responsive.isMobile(context)?AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
            _drawerkey.currentState?.openDrawer();
        },icon: Icon(Icons.menu,color: Colors.black,),),
        actions: [
          AppBarActionItems()
        ],
      ):PreferredSize(preferredSize: Size.zero, child: SizedBox()),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context)) // only desktop hole aita show korbe
            Expanded(
                flex: 1,
                child: sidemenu()),
            Expanded(
                flex: 10,
                child: Container(
                  color: Colors.grey.shade100,
                  width: double.infinity,
                  height: SizeConfig.screenHeight,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                              InfoCard(
                                icon: 'assets/credit-card.svg',
                                text: 'Transfer via \nCard Number',
                                amount: '\$120',
                              ),
                              InfoCard(
                                icon: 'assets/bank.svg',
                                text: 'Transfer via to \nsame Bank',
                                amount: '\$1200',
                              ),
                              InfoCard(
                                icon: 'assets/transfer.svg',
                                text: 'Transfer via to\nonline Banks',
                                amount: '\$200',
                              ),
                              InfoCard(
                                icon: 'assets/invoice.svg',
                                text: 'Transfer via to \nothers Bank',
                                amount: '\$1500',
                              ),
                              SizedBox(height: SizeConfig.blockSizeVertical!*4,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      PrimaryText(text: 'Balance',size: 16,color: Colors.grey,),
                                      PrimaryText(text: '\$1500',size: 30,color: Colors.black,fontWeight: FontWeight.w800,),
                                    ],
                                  ),
                                  PrimaryText(text: 'Past 30 days',size: 16,color: Colors.grey,)
                                ],
                              ),


                            ],
                          ),
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical!*3,),
                        Container(height: 400,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/barchart.png'),
                                  fit: BoxFit.cover

                              )
                          ),
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical!*5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PrimaryText(text: 'History',size: 30,fontWeight: FontWeight.w800,color: Colors.black,),
                            PrimaryText(text: 'Transaction of last 6 month',size: 16,color: Colors.grey,)
                          ],
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical!*3,),
                        HistoryTable(),
                        if(!Responsive.isDesktop(context))
                          paymentDetailsList()
                      ],
                    ),
                  ),
                )),
            if(Responsive.isDesktop(context)) // only desktop hole aita show korbe
            Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight,
                  color: Colors.grey.shade200,
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
