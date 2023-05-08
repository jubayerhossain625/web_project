

import 'package:flutter/material.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:web_project/common/responsive.dart';
import 'package:web_project/model/item_model.dart';
import 'package:web_project/presentation/widgets/text_widget.dart';

import '../../../../common/hardData/service_data.dart';
import 'individuals.dart';

serviceItems(BuildContext context){
  Responsive.isMobile(context)   ?   QuickAlert.show(
    width: 1.2,
      context: context,borderRadius:12,backgroundColor: Colors.black,
      widget: Items()): Container();
}


Items(){
  Item h;
  return Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children:  [

      const TextWidget(title: "For Individuals",color: Colors.green,size: 15,weight: FontWeight.w600,),
      Container(height: 1,width:200,color: Colors.green,),
      const SizedBox(
       height: 90,
       child: Individuals(),
      ),
const SizedBox(height: 10,),
     const  TextWidget(title: "For Business",color: Colors.green,size: 15,weight: FontWeight.w600,),
      Container(height: 1,width:200,color: Colors.green,),
      SizedBox(
        height: 190,
        child: ListView.builder(
            shrinkWrap: true,
            physics : const NeverScrollableScrollPhysics(),
            itemCount:HardData().getBusinesses().length,
            itemBuilder:(context,index){
              h = HardData().getBusinesses()[index];
              return Row(
                children: [
                   TextWidget(title: h.name,color: Colors.green,textAlign: TextAlign.start,size: 15,),
                  const Icon(Icons.arrow_forward,color: Colors.green,size: 25,)
                ],
              );
            } ),
      )
    ],
  );
}