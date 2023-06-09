import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/gohenry_data.dart';

class EloiseCardTab extends StatefulWidget {
  const EloiseCardTab({super.key});

  @override
  State<EloiseCardTab> createState() => _EloiseCardTabState();
}

class _EloiseCardTabState extends State<EloiseCardTab> {
  @override
  Widget build(BuildContext context) {
    return Consumer<GoHenryData>(
      builder: (context, value, child) => Column(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 25.0),
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      value.childTiles[1]
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
                              'lib/assets/images/eloise-card.jpeg',
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
                            Text('Block'),
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
                  Column(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
