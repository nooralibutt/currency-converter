import 'package:currency_exchange/screens/home/components/conversion_button.dart';
import 'package:currency_exchange/screens/home/components/main_menu_card.dart';
import 'package:currency_exchange/screens/home/components/main_text_title.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          child: MainTextTitle(),
        ),
        const MainMenuCard(),
        const SizedBox(height: 40),
        const ConversionButton(),
        const SizedBox(height: 30),
        const MainMenuCard(),
        const SizedBox(height: 41),
        GestureDetector(
          child: Container(
            height: 50,
            width: 386,
            decoration: BoxDecoration(
              color: const Color(0xff694df6),
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Center(
              child: Text(
                "CONVERT",
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                    fontFamily: "SFProText",
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
