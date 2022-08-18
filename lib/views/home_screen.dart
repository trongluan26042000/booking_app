import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/widgets/ticket_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Xin chào',style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                            'Bạn muốn đặt vé?',style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                        width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                              "assets/images/img_1.png"
                          )
                        )
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_filled,color: Color(0xFFBFC205),),
                      const SizedBox(width: 10,),
                      Text("Tìm kiếm",style: Styles.headLineStyle4,)
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Chuyến bay tiếp theo', style: Styles.headLineStyle2,),
                    InkWell(
                      onTap: (){
                        print("Đã nhấn");
                      },
                        child: Text('Tất cả',style: Styles.textStyle.copyWith(color: Styles.primaryColor),)),
                  ],
                ),
              ],
            ),
          ),
          const Gap(15),
          TicketView(),
        ],
      ),
    );
  }
}
