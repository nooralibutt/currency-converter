import 'package:currency_exchange/country.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? dropDownValue = Country.data.first.currency;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffedf0f6),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                child: Text(
                  "Currency Converter",
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w400,
                      fontFamily: "SFProText",
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0),
                ),
              ),
              Container(
                height: 227,
                width: 386,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                        items: Country.data.map((Country items) {
                          return DropdownMenuItem(
                            value: items.currency,
                            child: Row(
                              children: [
                                const SizedBox(width: 17),
                                Image.asset(
                                  items.countryFlag,
                                  width: 28,
                                  height: 20,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(width: 11),
                                Text(
                                  items.currency,
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
                            dropDownValue = newValue;
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
                              decoration: InputDecoration(
                                  border: InputBorder.none, hintText: ''),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              FloatingActionButton(
                onPressed: () {},
                elevation: 1.0,
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xff694df6),
                child: const Icon(Icons.swap_vert_outlined),
              ),
              const SizedBox(height: 30),
              Container(
                height: 227,
                width: 386,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                      "Select converted currency type",
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
                        items: Country.data.map((Country items) {
                          return DropdownMenuItem(
                            value: items.currency,
                            child: Row(
                              children: [
                                const SizedBox(width: 17),
                                Image.asset(
                                  items.countryFlag,
                                  width: 28,
                                  height: 20,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(width: 11),
                                Text(
                                  items.currency,
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
                            dropDownValue = newValue;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Your converted currency",
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
                              decoration: InputDecoration(
                                  border: InputBorder.none, hintText: ''),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
          ),
        ),
      ),
    );
  }
}

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
