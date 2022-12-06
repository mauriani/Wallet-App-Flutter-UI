import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/utils/my_button.dart';

import 'package:walletapp/utils/my_card.dart';
import 'package:walletapp/utils/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.pink,
          child: const Icon(Icons.monetization_on, size: 32),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home, size: 28, color: Colors.pink[200])),
              IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.settings, size: 28, color: Colors.grey)),
            ],
          ),
        )),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                // app bar
                Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, right: 25.0, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text("My",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Poppins")),
                          Text(" Cards",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins")),
                        ],
                      ),

                      // plus button
                      Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.grey[400], shape: BoxShape.circle),
                          child: const Icon(Icons.add))
                    ],
                  ),
                ),
                const SizedBox(height: 40),

                // cards
                SizedBox(
                  height: 230,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: _controller,
                    children: [
                      const MyCard(
                        balance: 5250.20,
                        cardNumber: 123456789,
                        expiryMonth: 10,
                        expiryYear: 24,
                        color: Colors.deepPurple,
                      ),
                      MyCard(
                        balance: 342.23,
                        cardNumber: 123456789,
                        expiryMonth: 11,
                        expiryYear: 23,
                        color: Colors.blue[400],
                      ),
                      MyCard(
                        balance: 250.20,
                        cardNumber: 123456789,
                        expiryMonth: 09,
                        expiryYear: 10,
                        color: Colors.green[400],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect:
                      ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
                ),

                const SizedBox(height: 40),

                // 3 buttons -> send + pay + bill
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      // send button
                      MyButton(
                        iconImagePath: 'lib/icons/send-money.png',
                        buttonText: 'Send',
                      ),
                      // pay button

                      MyButton(
                        iconImagePath: 'lib/icons/credit-card.png',
                        buttonText: 'Pay',
                      ),

                      // bills button

                      MyButton(
                        iconImagePath: 'lib/icons/bill.png',
                        buttonText: 'Bills',
                      ),
                    ],
                  ),
                ),

                // column -< stats + trnsactions
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: const [
                      // statistics
                      MyListTile(
                          iconImagePath: 'lib/icons/statistics.png',
                          tileName: 'Statistics',
                          tileSubName: 'Payment and Icome'),
                      // transactions

                      MyListTile(
                          iconImagePath: 'lib/icons/transaction.png',
                          tileName: 'Transactions',
                          tileSubName: 'Transaction history')
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
