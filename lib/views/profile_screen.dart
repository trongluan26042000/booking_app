import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/widgets/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(20) ),
        children: [
          Gap(AppLayout.getHeight(50)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(80),
                width: AppLayout.getHeight(80),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                      image: AssetImage(
                          "assets/images/img_1.png"
                      )
                  )
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets",style: Styles.headLineStyle1,),
                  Text("Hà Nội",style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500,color: Colors.grey.shade500
                  )),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3)
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                          color: const Color(0xFFFEF4F3)
                        ),
                          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3),vertical: AppLayout.getHeight(3)),
                          child: Row(
                            children: [
                              Container(
                                padding:const EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF526799),
                                ),
                                child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,
                                color: Colors.white, size: 15,
                                ),
                              ),
                              Gap(AppLayout.getHeight(5)),
                              const Text("Premium status", style: TextStyle(
                                color: Color(0xFF526799), fontWeight: FontWeight.w600
                              ),),
                              Gap(AppLayout.getHeight(5)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print("ban da nhan");
                    },
                      child: Text("Edit", style: Styles.textStyle.copyWith(color: Styles.primaryColor,fontWeight: FontWeight.w300),)
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.grey.shade300,),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                ),
              ),
              Positioned(
                right: -45,
                  top: -40,
                  child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(30)),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18,color: const Color(0xFF264CD2))
                ),
              )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25),vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.primaryColor, size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You have got new award",
                        style: Styles.headLineStyle2.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white,
                        ),
                        ),
                        Text("Chuyến bay thứ 100 trong năm",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Text("Quãng đường đã bay",style: Styles.headLineStyle2,),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 2,
                  spreadRadius: 2,
                ),
              ]
            ),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(20)),
                Text("9012005",style: TextStyle(fontSize: 45,color: Styles.textColor, fontWeight: FontWeight.w600),
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Tích luy",style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                    Text("26 04 2023",style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                  ],
                ),
                Gap(AppLayout.getHeight(4)),
                Divider(color: Colors.grey.shade500,),
                Gap(AppLayout.getHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                        firstText: "26 0420",
                        secondText: "Miles", alignment: CrossAxisAlignment.start, isColor:false),
                    AppColumnLayout(
                        firstText: "VN Airline",
                        secondText: "Hãng mua ", alignment: CrossAxisAlignment.end, isColor:false),
                  ],
                ),
                Gap(AppLayout.getHeight(18)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                        firstText: "26 ",
                        secondText: "Miles", alignment: CrossAxisAlignment.start, isColor:false),
                    AppColumnLayout(
                        firstText: "JetStar Parcific",
                        secondText: "Hãng mua ", alignment: CrossAxisAlignment.end, isColor:false),
                  ],
                ),
                Gap(AppLayout.getHeight(18)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                        firstText: "75 000 ",
                        secondText: "Miles", alignment: CrossAxisAlignment.start, isColor:false),
                    AppColumnLayout(
                        firstText: "VietJet Air",
                        secondText: "Hãng mua ", alignment: CrossAxisAlignment.end, isColor:false),
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          InkWell(
            onTap: (){
              print("ban da nhan");
            },
            child: Center(
              child: Text("Bạn muốn tích lũy thêm ?",
              style: Styles.textStyle.copyWith(
                color: Styles.primaryColor,
                fontWeight: FontWeight.w500,
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
