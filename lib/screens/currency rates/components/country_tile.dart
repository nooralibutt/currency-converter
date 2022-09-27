import 'package:currency_exchange/models/currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilities/constants.dart';

class CountryTile extends StatelessWidget {
  final Color outerColor;
  final Color innerColor;
  final Currency currency;
  const CountryTile({
    Key? key,
    required this.outerColor,
    required this.innerColor,
    required this.currency,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      color: outerColor,
      child: Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: innerColor,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(40), topLeft: Radius.circular(40))),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0.w),
              child: Image.asset(
                currency.Flag,
                width: 28,
                height: 20,
                fit: BoxFit.fill,
              ),
            ),
            Text(currency.Symbol,
                style: const TextStyle(
                    color: kCoolGrey,
                    fontWeight: FontWeight.w700,
                    fontFamily: "SFProText",
                    fontSize: 17.0)),
            SizedBox(width: 190.w),
            const Text('700',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w700,
                    fontFamily: "SFProText",
                    fontSize: 17.0)),
          ],
        ),
      ),
    );
  }
}
