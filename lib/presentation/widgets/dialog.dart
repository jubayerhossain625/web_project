
import 'package:flutter/material.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

CustomDialog(Widget widget,BuildContext context){
  return showDialog(context: context, builder: (BuildContext context){
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1.5,color: Colors.white)),
      child:  Dialog(),
    );
  });
}