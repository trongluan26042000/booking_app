import 'package:booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
class AppDoubleTextWidget extends StatelessWidget {
  const AppDoubleTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Chuyến bay tiếp theo', style: Styles.headLineStyle2,),
        InkWell(
            onTap: (){
              print("Đã nhấn");
            },
            child: Text('Tất cả',style: Styles.textStyle.copyWith(color: Styles.primaryColor),)),
      ],
    );
  }
}
