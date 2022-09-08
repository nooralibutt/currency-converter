import 'package:flutter/cupertino.dart';

class MainTextTitle extends StatelessWidget {
  const MainTextTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Currency Converter",
      style: TextStyle(
          color: Color(0xff333333),
          fontWeight: FontWeight.w400,
          fontFamily: "SFProText",
          fontStyle: FontStyle.normal,
          fontSize: 20.0),
    );
  }
}
