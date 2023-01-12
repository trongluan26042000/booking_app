import 'package:booking_app/utils/app_info_list.dart';
import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/widgets/column_layout.dart';
import 'package:booking_app/widgets/ticket_tabs.dart';
import 'package:booking_app/widgets/ticket_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text('Vé máy bay',style: Styles.headLineStyle1,),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: 'Sắp tới', secondTab: 'Đã mua'),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0],isColor: true),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: 'Trọng Luân',
                          secondText: 'Hành khách',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: '2604 568427',
                          secondText: 'passport',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
