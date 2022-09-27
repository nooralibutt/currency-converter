import 'package:currency_exchange/screens/home/components/home_body.dart';
import 'package:currency_exchange/utilities/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPaleGreyTwo,
      body: SafeArea(
        child: HomeBody(),
      ),
    );
  }
}
