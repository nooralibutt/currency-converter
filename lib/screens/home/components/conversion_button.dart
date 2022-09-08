import 'package:flutter/material.dart';

class ConversionButton extends StatefulWidget {
  const ConversionButton({Key? key}) : super(key: key);

  @override
  State<ConversionButton> createState() => _ConversionButtonState();
}

class _ConversionButtonState extends State<ConversionButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xff694df6),
          fixedSize: const Size(50, 50),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(2)),
      onPressed: () {},
      child: const Icon(Icons.swap_vert_outlined),
    );
  }
}
