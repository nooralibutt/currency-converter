import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilities/constants.dart';

class ToggleButton extends StatelessWidget {
  final TabController controller;
  const ToggleButton({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 386.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: kPaleGreyOne),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: TabBar(
            unselectedLabelColor: kCoolGrey,
            labelColor: kPurpleColor,
            controller: controller,
            indicator: BoxDecoration(
                color: kSwapIconBackgroundColor,
                borderRadius: BorderRadius.circular(10)),
            onTap: (value) {
              print('value: $value');
            },
            tabs: const [
              Tab(
                text: 'Exchange Currency',
              ),
              Tab(
                text: 'Currency Rates',
              )
            ]),
      ),
    );
  }
}
