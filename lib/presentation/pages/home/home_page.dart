import 'package:flutter/material.dart';
import 'package:web_project/presentation/pages/home/components/app_bar.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool serviceOnTap = false;
  bool companyOnTap = false;
  int sCount = 0;
  int cCount = 0 ;
  bool themes = false;


  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: AppBarCustoms(),
        ),
      ),
    );
  }


  serviceONTAP(){
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
