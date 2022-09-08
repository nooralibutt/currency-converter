import 'package:flutter/material.dart';

class FieldContainer extends StatelessWidget {
  final Widget child;

  const FieldContainer({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: const Color(0xffedf0f6),
          borderRadius: BorderRadius.circular(25),
        ),
        child: child);
  }
}
