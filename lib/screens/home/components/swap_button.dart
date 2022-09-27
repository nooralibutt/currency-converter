import 'package:currency_exchange/utilities/constants.dart';
import 'package:flutter/material.dart';

class SwapButton extends StatelessWidget {
  const SwapButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: kSwapIconBackgroundColor,
          foregroundColor: kPurpleColor,
          fixedSize: const Size(50, 50),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(2)),
      onPressed: () {},
      child: const Icon(Icons.swap_vert_outlined),
    );
  }
}
