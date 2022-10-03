import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_admin_dashboard/common/app_colors.dart';
import 'package:flutter_web_admin_dashboard/pages/dashboard/widget/setting_button.dart';



/*
Title:MyCardWidget
Purpose:MyCardWidget
Created By:Kalpesh Khandla
Created Date:20 Feb 2022
*/

class MyFollowup extends StatefulWidget {
  @override
  _MyFollowupState createState() => _MyFollowupState();
}

class _MyFollowupState  extends State<MyFollowup> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              // Container(
              //   height: 35,
              //   width: 35,
              //   decoration: BoxDecoration(
              //     color: AppColors.yellow,
              //     shape: BoxShape.circle,
              //   ),
              //   child: Icon(
              //     Icons.add_circle_outlined,
              //     color: AppColors.white,
              //     size: 15,
              //   ),
              // ),
              SizedBox(
                width: 10,
              ),
              // Text(
              //   "Your Cards",
              //   style: TextStyle(color: AppColors.white),
              // ),
              Spacer(),

            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff4691f7),
                  Color(0xff4ecbcf),
                ],
              ),
            ),
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.credit_card_outlined,
                      size: 45,
                      color: AppColors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Today Appoinment",
                      style: TextStyle(color: AppColors.white),
                    )
                  ],
                ),
                Spacer(),
                // Text(
                //   "****  ****  ****  4457",
                //   style: TextStyle(color: AppColors.white),
                //   textAlign: TextAlign.center,
                // ),
                Row(
                  children: [
                    Text(
                      "View Today Follow up",
                      style: TextStyle(color: AppColors.white),
                    ),
                    Spacer(),
                    Text(
                      "0",
                      style: TextStyle(color: AppColors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
