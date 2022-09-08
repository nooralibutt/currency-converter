import 'package:currency_exchange/models/currency.dart';
import 'package:currency_exchange/screens/home/components/field_container.dart';
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
      height: 227,
      width: 386,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.indigo.withOpacity(0.3),
            blurRadius: 10,
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
                color: Color(0xff9ba2b0),
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
              dropdownColor: const Color(0xffedf0f6),
              isExpanded: true,
              borderRadius: BorderRadius.circular(25),
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xff333333),
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
                          color: Color(0xff9ba2b0),
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
                color: Color(0xff9ba2b0),
                fontWeight: FontWeight.w400,
                fontFamily: "SFProText",
                fontStyle: FontStyle.normal,
                fontSize: 14.0),
          ),
          const SizedBox(height: 6),
          Row(
            children: const [
              Icon(Icons.attach_money, color: Color(0xff9ba2b0)),
              SizedBox(width: 13),
              Expanded(
                child: FieldContainer(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        color: Color(0xff6a717f),
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
