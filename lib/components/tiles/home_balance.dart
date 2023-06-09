import 'package:flutter/material.dart';

class HomeBalanceTile extends StatelessWidget {
  const HomeBalanceTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade400,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: Column(
            children: [
              // Balance
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  '\$50.00',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),

              // Text
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  'Next allowance in 2 days \$10.00',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),

              // "Add Money" Button
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        width: 190,
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Center(
                            child: Text('Add money',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),

                    // "Transfer" Button
                    GestureDetector(
                      onTap: () => {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        width: 190,
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Center(
                            child: Text('Transfer',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
