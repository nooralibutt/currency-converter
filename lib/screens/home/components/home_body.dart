import 'package:currency_exchange/screens/currency%20rates/currency_rates_screen.dart';
import 'package:currency_exchange/screens/home/components/main_menu_card.dart';
import 'package:currency_exchange/screens/home/components/main_text_title.dart';
import 'package:currency_exchange/screens/home/components/swap_button.dart';
import 'package:currency_exchange/screens/home/components/toggle_button.dart';
import 'package:currency_exchange/utilities/constants.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: MainTextTitle(),
        ),
        const SizedBox(height: 10),
        ToggleButton(controller: tabController),
        const SizedBox(height: 20),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: const [
              Padding(
                padding: EdgeInsets.all(15),
                child: ExchangeCurrencyScreenBody(),
              ),
              CurrencyRatesBody(),
            ],
          ),
        )
      ],
    );
  }
}

class ExchangeCurrencyScreenBody extends StatelessWidget {
  const ExchangeCurrencyScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const MainMenuCard(),
          const SizedBox(height: 20),
          const SwapButton(),
          const SizedBox(height: 20),
          const MainMenuCard(),
          const SizedBox(height: 20),
          GestureDetector(
            // onTap: () {
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //           builder: (context) => const ToggleScreen()));
            // },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: kPurpleColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                child: Text(
                  "CONVERT",
                  style: TextStyle(
                      color: kSwapIconBackgroundColor,
                      fontWeight: FontWeight.w700,
                      fontFamily: "SFProText",
                      fontSize: 14.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
