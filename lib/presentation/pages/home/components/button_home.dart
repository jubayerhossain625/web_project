import 'package:flutter/material.dart';

import '../../../../common/responsive.dart';
import '../../../widgets/text_widget.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding:  EdgeInsets.only(left: Responsive.isDesktop(context) ? 30: 0 ),
      child: Row(
        children:  [
          ClipRect(
            child:  Image.asset("assets/logo.png",
              height: Responsive.isTab(context) ? 30:40,width: Responsive.isTab(context) ? 30 : 40,
            ),
          ),
          TextWidget(title: "GrubWesT",color:Colors.white,weight: FontWeight.w700,size: Responsive.isTab(context) ? 18 : 25,)
        ],
      ),
    );
  }
}
