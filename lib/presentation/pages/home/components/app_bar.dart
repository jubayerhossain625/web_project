
import 'package:flutter/material.dart';
import 'package:web_project/common/responsive.dart';
import 'package:web_project/presentation/pages/home/components/button_home.dart';
import 'package:web_project/presentation/pages/home/components/top_item.dart';
import 'package:web_project/presentation/pages/home/components/subtop_items.dart';

class AppBarCustoms extends StatefulWidget {
   const AppBarCustoms({Key? key}) : super(key: key);

  @override
  State<AppBarCustoms> createState() => _AppBarCustomsState();
}

class _AppBarCustomsState extends State<AppBarCustoms> {
  bool serviceOnTap = false;
  int sCount=0;
@override
  void initState() {
    // TODO: implement initState
  serviceOnTap = false;
  sCount=0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Container(
      height: 200,
      color: serviceOnTap ?Colors.black: Colors.transparent ,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical:  15.0,horizontal: Responsive.isMobile(context) ? 8.0:20),
        child: Responsive(mobile: mobileItem(), tab:  commonItems(), desktop:  commonItems(),),

      ),
    );
  }

  commonItems(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: const [
        HomeButton(),
        Spacer(flex: 2,),
          TopItems(),
        Spacer(flex: 3,),
        SubTopItems(),

      ],
    );
  }

  mobileItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children:  [
        Row(
          children: [
            HomeButton(),
            Spacer(),
            InkWell(onTap: serviceONTAP,
              child: Container(
                height: 40,
                width: 40,

                decoration: BoxDecoration(
                    color: Colors.transparent,
                  border: Border.all(width: 1.5,color: Colors.white),
                  borderRadius: BorderRadius.circular(25)
                ),
                child:   Icon(serviceOnTap== true ? Icons.keyboard_arrow_down :Icons.keyboard_arrow_up, color: Colors.white,),
              ),
            )
            ],
        ),

        Visibility(
          visible: serviceOnTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: const [
                  SubTopItems(),
                  TopItems(),
                ],
              ),
            ],
          ),
        )


      ],
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
}
