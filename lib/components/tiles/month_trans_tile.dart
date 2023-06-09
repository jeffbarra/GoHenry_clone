import 'package:flutter/material.dart';

import '../../models/monthly_trans.dart';

class MonthTransTile extends StatelessWidget {
  final MonthlyTrans monthlyTrans;

  const MonthTransTile({super.key, required this.monthlyTrans});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),

      // This Month Row
      child: Column(
        children: [
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
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: monthlyTrans.avatarImagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        // Transaction details Column
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              monthlyTrans.giverName,
                              style: const TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                            Text(monthlyTrans.date),
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
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Text(
                        monthlyTrans.transAmount,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.green),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text(
                        monthlyTrans.updatedBalance,
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
