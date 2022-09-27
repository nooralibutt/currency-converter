import 'package:currency_exchange/utilities/constants.dart';
import 'package:flutter/material.dart';

class FieldContainer extends StatelessWidget {
  final Widget child;

  const FieldContainer({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: kPaleGreyOne,
          borderRadius: BorderRadius.circular(25),
        ),
        child: child);
  }
}
