import 'package:flutter/material.dart';
import 'package:gohenry_clone/models/child_tile.dart';

class ChildTiles extends StatelessWidget {
  final ChildTile childTiles;
  void Function()? onTap;
  void Function()? onPress;
  void Function()? onPressTwo;

  ChildTiles({
    super.key,
    required this.childTiles,
    required this.onTap,
    required this.onPress,
    required this.onPressTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 190,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              // Row 1
              Container(
                height: 90,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: childTiles.avatarImagePath,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 25),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Text(
                            childTiles.childName,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 100.0),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, right: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            childTiles.balance,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 5.0),
                          const Text('Available to spend'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Row 2
              Container(
                height: 50,

                // Button 1
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 195,
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(color: Colors.grey.shade300),
                              bottom: BorderSide(color: Colors.grey.shade300),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: onPress,
                                child: Container(
                                  decoration:
                                      const BoxDecoration(color: Colors.white),
                                  height: 48,
                                  width: 195,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.credit_card),
                                      const SizedBox(width: 10.0),
                                      Text(childTiles.totalBalance,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // Button 2
                    Row(
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: onPressTwo,
                              child: Container(
                                height: 50,
                                width: 195,
                                decoration: BoxDecoration(
                                  border: Border(
                                    left:
                                        BorderSide(color: Colors.grey.shade300),
                                    top:
                                        BorderSide(color: Colors.grey.shade300),
                                    bottom:
                                        BorderSide(color: Colors.grey.shade300),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.savings_outlined),
                                    const SizedBox(width: 10.0),
                                    Text(
                                      childTiles.savingsBalance,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

              // Row 3
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.cyanAccent.shade100,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.info_outline_rounded,
                      size: 20,
                    ),
                    Text(
                      'Get ${childTiles.bottomName} to log into the app!',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const Icon(Icons.arrow_forward_ios_rounded, size: 20)
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
