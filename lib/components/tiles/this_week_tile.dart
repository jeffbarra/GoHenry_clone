import 'package:flutter/material.dart';

class ThisWeekTile extends StatefulWidget {
  const ThisWeekTile({super.key});

  @override
  State<ThisWeekTile> createState() => _ThisWeekTileState();
}

class _ThisWeekTileState extends State<ThisWeekTile> {
  @override
  Widget build(BuildContext context) {
    return
        // "This Week" Transactions Tile
        Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200),
        ),
      ),

      // This Week Row
      child: Column(
        children: [
          // Header Row
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 15.0),
            child: Row(
              children: const [
                // Header
                Text(
                  'This week',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30.0),

          // Transaction Details Row
          Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Icon and Transaction Details Column
                Column(
                  children: [
                    Row(
                      children: [
                        // Icon
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.tealAccent,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(Icons.account_balance_wallet_outlined),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        // Transaction details Column
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Allowance',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                            Text('June 3, 2023'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                // Dollar Amount Column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Text(
                        '+\$10.00',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.green),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text(
                        '\$40.00',
                        style: TextStyle(
                            fontSize: 13, color: Colors.grey.shade600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
