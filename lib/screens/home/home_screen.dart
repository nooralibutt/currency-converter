import 'package:currency_exchange/screens/home/components/home_body.dart';
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
      backgroundColor: Color(0xfff7f8f9),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(14.0),
          child: SingleChildScrollView(child: HomeBody()),
        ),
      ),
    );
  }
}
