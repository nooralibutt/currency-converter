import 'package:currency_exchange/models/currency.dart';
import 'package:currency_exchange/screens/home/components/field_container.dart';
import 'package:currency_exchange/utilities/constants.dart';
import 'package:flutter/material.dart';

class MainMenuCard extends StatefulWidget {
  const MainMenuCard({Key? key}) : super(key: key);

  @override
  State<MainMenuCard> createState() => _MainMenuCardState();
}

class _MainMenuCardState extends State<MainMenuCard> {
  String dropDownValue = Currency.data.first.Symbol;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        color: kSwapIconBackgroundColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.indigo.withOpacity(0.1),
            blurRadius: 1,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Select your currency type",
            style: TextStyle(
                color: kCoolGrey,
                fontWeight: FontWeight.w400,
                fontFamily: "SFProText",
                fontStyle: FontStyle.normal,
                fontSize: 14.0),
          ),
          const SizedBox(height: 9),
          FieldContainer(
            child: DropdownButton(
              value: dropDownValue,
              underline: const SizedBox(),
              dropdownColor: kPaleGreyOne,
              isExpanded: true,
              borderRadius: BorderRadius.circular(25),
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: kBlack,
              ),
              items: Currency.data.map((Currency items) {
                return DropdownMenuItem(
                  value: items.Symbol,
                  child: Row(
                    children: [
                      const SizedBox(width: 17),
                      Image.asset(
                        items.Flag,
                        width: 28,
                        height: 20,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(width: 11),
                      Text(
                        items.Symbol,
                        style: const TextStyle(
                          color: kCoolGrey,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropDownValue = newValue ?? '';
                });
              },
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            "Enter your currency",
            style: TextStyle(
                color: kCoolGrey,
                fontWeight: FontWeight.w400,
                fontFamily: "SFProText",
                fontStyle: FontStyle.normal,
                fontSize: 14.0),
          ),
          const SizedBox(height: 6),
          Row(
            children: const [
              Icon(Icons.attach_money, color: kCoolGrey),
              SizedBox(width: 13),
              Expanded(
                child: FieldContainer(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        color: kDarkGrey,
                        fontWeight: FontWeight.w700,
                        fontFamily: "SFProText",
                        fontStyle: FontStyle.normal,
                        fontSize: 20.0),
                    decoration:
                        InputDecoration(border: InputBorder.none, hintText: ''),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
