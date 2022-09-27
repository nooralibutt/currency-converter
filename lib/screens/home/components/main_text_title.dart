import 'package:currency_exchange/utilities/constants.dart';
import 'package:flutter/cupertino.dart';

class MainTextTitle extends StatelessWidget {
  const MainTextTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Currency Converter",
      style: TextStyle(
          color: kBlack,
          fontWeight: FontWeight.w400,
          fontFamily: "SFProText",
          fontSize: 20.0),
    );
  }
}
