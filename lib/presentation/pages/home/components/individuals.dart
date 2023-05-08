import 'package:flutter/material.dart';

import '../../../../common/hardData/service_data.dart';
import '../../../../model/item_model.dart';
import '../../../widgets/text_widget.dart';

class Individuals extends StatelessWidget {
  const Individuals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Item h;
    return  ListView.builder(
        shrinkWrap: true,
        physics : const NeverScrollableScrollPhysics(),
        itemCount:HardData().getIndividuals().length,
        itemBuilder:(context,index){
          h = HardData().getIndividuals()[index];
          return Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Row(
              children: [
                TextWidget(title: h.name,color: Colors.green,textAlign: TextAlign.start,size: 15,),
                const Icon(Icons.arrow_forward,color: Colors.green,size: 25,)
              ],
            ),
          );
        } );
  }
}
