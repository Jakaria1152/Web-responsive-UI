import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/size_config.dart';

class sidemenu extends StatelessWidget {
  const sidemenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        color: Colors.grey.shade100,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 100,
                padding: EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 35,
                  width: 20,
                  child: SvgPicture.asset('assets/mac-action.svg'),),
              ),
              IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/home.svg',width: 20,color: Colors.grey,),
             padding: EdgeInsets.symmetric(vertical: 20),
              ),
              IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/pie-chart.svg',width: 20,color: Colors.grey,),
                padding: EdgeInsets.symmetric(vertical: 20),
              ),
              IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/clipboard.svg',width: 20,color: Colors.grey,),
                padding: EdgeInsets.symmetric(vertical: 20),
              ),
              IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/credit-card.svg',width: 20,color: Colors.grey,),
                padding: EdgeInsets.symmetric(vertical: 20),
              ),
              IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/trophy.svg',width: 20,color: Colors.grey,),
                padding: EdgeInsets.symmetric(vertical: 20),
              ),
              IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/invoice.svg',width: 20,color: Colors.grey,),
                padding: EdgeInsets.symmetric(vertical: 20),
              ),

            ],
          ),
        ),
      ),
    );
  }
}