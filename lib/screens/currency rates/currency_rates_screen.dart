import 'package:currency_exchange/models/currency.dart';
import 'package:currency_exchange/screens/currency%20rates/components/country_tile.dart';
import 'package:currency_exchange/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrencyRatesBody extends StatefulWidget {
  const CurrencyRatesBody({Key? key}) : super(key: key);

  @override
  State<CurrencyRatesBody> createState() => _CurrencyRatesBodyState();
}

class _CurrencyRatesBodyState extends State<CurrencyRatesBody> {
  String dropDownValue = Currency.data.first.Symbol;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPaleGreyTwo,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 15.h),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: kPurpleColor,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: Colors.white, width: 2)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 25),
                  child: Row(
                    children: [
                      SizedBox(width: 30.w),
                      DropdownButton(
                        value: dropDownValue,
                        underline: const SizedBox(),
                        dropdownColor: kPaleGreyOne,
                        borderRadius: BorderRadius.circular(25),
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white54,
                        ),
                        items: Currency.data.map((Currency items) {
                          return DropdownMenuItem(
                            value: items.Symbol,
                            child: Row(
                              children: [
                                Image.asset(
                                  items.Flag,
                                  width: 28,
                                  height: 20,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(
                                  width: 16.w,
                                ),
                                Text(
                                  items.Symbol,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: "SFProText",
                                      fontWeight: FontWeight.w700),
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
                      SizedBox(width: 150.w),
                      const Text('10,000',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "SFProText",
                              fontWeight: FontWeight.w700,
                              fontSize: 15)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 55.h),
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        CountryTile(
                            outerColor: Colors.transparent,
                            innerColor: Colors.white,
                            currency: Currency(
                                Flag: 'images/flag/try.png', Symbol: 'TRY')),
                        CountryTile(
                            outerColor: Colors.white,
                            innerColor: kPaleGreyOne,
                            currency: Currency(
                                Flag: 'images/flag/yun.png', Symbol: 'YUN')),
                        CountryTile(
                            outerColor: kPaleGreyOne,
                            innerColor: Colors.white,
                            currency: Currency(
                                Flag: 'images/flag/eur.png', Symbol: 'EUR')),
                        CountryTile(
                            outerColor: Colors.white,
                            innerColor: kPaleGreyOne,
                            currency: Currency(
                                Flag: 'images/flag/gbp.png', Symbol: 'GBP')),
                        CountryTile(
                            outerColor: kPaleGreyOne,
                            innerColor: Colors.white,
                            currency: Currency(
                                Flag: 'images/flag/cad.png', Symbol: 'CAD')),
                        CountryTile(
                            outerColor: Colors.white,
                            innerColor: kPaleGreyOne,
                            currency: Currency(
                                Flag: 'images/flag/rub.png', Symbol: 'RUB')),
                        CountryTile(
                            outerColor: kPaleGreyOne,
                            innerColor: Colors.white,
                            currency: Currency(
                                Flag: 'images/flag/chf.png', Symbol: 'CHF')),

                        // ToggleButton(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
