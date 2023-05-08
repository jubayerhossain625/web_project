import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:web_project/presentation/pages/home/components/service_items.dart';

import '../../../../common/responsive.dart';
import '../../../widgets/button_widgets.dart';
import '../../../widgets/dialog.dart';
import '../../../widgets/text_widget.dart';

class TopItems extends StatefulWidget {
  const TopItems({Key? key}) : super(key: key);

  @override
  State<TopItems> createState() => _TopItemsState();
}

class _TopItemsState extends State<TopItems> {

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
    return  Padding(
      padding: const EdgeInsets.only(top:10),
      child: Column(
        children: [
          Row(
            children: [
              ButtonLTDWidget(onTap: serviceONTAP,focusColor:Colors.grey ,radius: 30,
                widget: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    children:  [
                      TextWidget(title: "Service",color: Colors.white,size:  Responsive.isTab(context) ? 14 : 16,weight: FontWeight.w600,),
                      Icon(serviceOnTap== true ? Icons.keyboard_arrow_down :Icons.keyboard_arrow_up, color: Colors.white,)
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 7.0,),
              ButtonLTDWidget(onTap: serviceONTAP,focusColor:Colors.grey ,radius: 30,
                widget: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    children:  [
                      TextWidget(title: "Company",color: Colors.white,size:  Responsive.isTab(context) ? 14 : 16,weight: FontWeight.w600,),
                      Icon(serviceOnTap ? Icons.keyboard_arrow_down :Icons.keyboard_arrow_up,color: Colors.white, )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8.0,),
              ButtonLTDWidget(onTap: serviceONTAP,focusColor:Colors.grey ,radius: 30,
                widget:  Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextWidget(title: "Careers",color: Colors.white,size:  Responsive.isTab(context) ? 14 : 16,weight: FontWeight.w600,),
                ),
              ),

            ],
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
        serviceItems(context);

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
