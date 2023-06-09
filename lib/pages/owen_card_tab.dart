import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gohenry_clone/components/tiles/month_trans_tile.dart';
import 'package:gohenry_clone/components/tiles/this_week_tile.dart';
import 'package:gohenry_clone/models/monthly_trans.dart';
import 'package:provider/provider.dart';
import '../data/gohenry_data.dart';

class OwenCardTab extends StatefulWidget {
  const OwenCardTab({super.key});

  @override
  State<OwenCardTab> createState() => _OwenCardTabState();
}

class _OwenCardTabState extends State<OwenCardTab> {
  @override
  Widget build(BuildContext context) {
    return Consumer<GoHenryData>(
      builder: (context, value, child) => Column(
        children: [
          // ENTIRE PAGE WILL SCROLL
          Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 25.0),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        value.childTiles[0]
                            .balance, // displays balance in GoHenryData
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    // Owen's Card
                    Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Image.asset(
                                'lib/assets/images/owen-card.jpeg',
                                width: 250),
                          ),
                        ],
                      ),
                    ),

                    // Icon Buttons
                    Container(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.block_outlined,
                                      size: 25, color: Colors.grey.shade700),
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              const Text('Block'),
                            ],
                          ),
                          const SizedBox(width: 20.0),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.pin,
                                      size: 25, color: Colors.grey.shade700),
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              const Text('PIN'),
                            ],
                          ),
                          const SizedBox(width: 20.0),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.credit_card_outlined,
                                      size: 25, color: Colors.grey.shade700),
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              const Text('New'),
                            ],
                          ),
                          const SizedBox(width: 20.0),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.speed_outlined,
                                      size: 25, color: Colors.grey.shade700),
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              const Text('Limits'),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // "This Week" Transactions
                    const ThisWeekTile(),

                    // Current Months Transactions - Header
                    Row(
                      children: const [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 25.0),
                          child: Text(
                            'April',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),

                    // Current Months Transactions
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: value.monthlyTrans.length,
                      itemBuilder: (context, index) {
                        MonthlyTrans individualMonthlyTrans =
                            value.monthlyTrans[index];
                        return MonthTransTile(
                          monthlyTrans: individualMonthlyTrans,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
