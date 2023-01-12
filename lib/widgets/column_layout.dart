import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final bool? isColor;
  final CrossAxisAlignment alignment;
  const AppColumnLayout({Key? key,required this.firstText,required this.secondText,required this.alignment,this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: alignment,
      //style:isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),
      children: [
        Text(firstText,style:isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
        Gap(AppLayout.getHeight(5)),
        Text(secondText,style: Styles.headLineStyle4,)
      ],
    );
  }
}
