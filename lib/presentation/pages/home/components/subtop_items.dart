import 'package:flutter/material.dart';

import '../../../../common/responsive.dart';
import '../../../../common/string/app_color.dart';
import '../../../widgets/button_widgets.dart';
import '../../../widgets/text_widget.dart';

class SubTopItems extends StatefulWidget {
  const SubTopItems({Key? key}) : super(key: key);

  @override
  State<SubTopItems> createState() => _SubTopItemsState();
}

class _SubTopItemsState extends State<SubTopItems> {
  bool serviceOnTap = false;
  bool companyOnTap = false;
  int sCount = 0;
  int cCount = 0 ;
  bool themes = false;

  @override
  void initState() {
    // TODO: implement initState

    serviceOnTap = false;
    companyOnTap = false;
    sCount = 0;
    cCount = 0 ;
    themes = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 5.0,right: Responsive.isDesktop(context) ? 30: 0 ),
      child: Row(
        children: [
          SizedBox(
            height:  Responsive.isTab(context) ? 65: 50,
            width: Responsive.isTab(context) ? 108 : 140.0 ,
            child: Container(
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(30),border: Border.all(width: 1.5,color: Colors.white)
              ),
              child: ButtonLTDWidget(radius: 30,
                onTap: serviceONTAP,focusColor:AppColors.green50.withOpacity(.4) ,
                widget: const Padding(
                  padding: EdgeInsets.all(1.8),
                  child: TextLtdWidget(title: "Check Rate List",color: Colors.white,size: 15,weight: FontWeight.w600,line: 2,),
                ),
              ),
            ),
          ),
          const SizedBox(width: 7.0,),
          SizedBox(
            height:  Responsive.isTab(context) ? 65: 50,
            width: Responsive.isTab(context) ? 90: 110 ,
            child: ButtonLTDWidget(
              onTap: serviceONTAP,bgColor: Colors.white,focusColor:Colors.grey ,radius: 30,
              widget: const Padding(
                padding: EdgeInsets.all(3.0),
                child: TextLtdWidget(title: "Sell Scrap",color: Colors.black,size: 15,weight: FontWeight.w600,line: 2,),
              ),
            ),
          ),
          const SizedBox(width: 10.0,),
          InkWell(
            onTap: themeWork,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: themes ? Colors.yellow:Colors.deepPurple,
                  borderRadius: BorderRadius.circular(50.0)
              ),
              child: Icon(themes ? Icons.wb_sunny_outlined : Icons.nightlight,color:  themes ? Colors.black : Colors.white,size: 28.0,),
            ),
          ),

        ],
      ),
    );
  }

  void serviceONTAP(){
    sCount++;
    setState(() {
      if(sCount%2==0) {
        serviceOnTap = true;
      }else{
        serviceOnTap = false;
      }
    });
  }

  void themeWork(){
    sCount++;
    setState(() {
      if(sCount%2==0) {
        themes = true;
      }else{
        themes = false;
      }
    });
  }

}
